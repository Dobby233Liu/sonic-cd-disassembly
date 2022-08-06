# 2022 Dobby233Liu
#
# This is free and unencumbered software released into the public domain.
#
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
#
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# For more information, please refer to <http://unlicense.org/>

"""
Converts Sonic CD SMPS data to ASM.
"""

from io import StringIO
import struct

NOTES = {
    0x80: "nRst",
    0x81: "nC0", 0x82: "nCs0", 0x83: "nD0", 0x84: "nEb0",
    0x85: "nE0", 0x86: "nF0", 0x87: "nFs0", 0x88: "nG0",
    0x89: "nAb0", 0x8A: "nA0", 0x8B: "nBb0", 0x8C: "nB0",
    0x8D: "nC1", 0x8E: "nCs1", 0x8F: "nD1", 0x90: "nEb1",
    0x91: "nE1", 0x92: "nF1", 0x93: "nFs1", 0x94: "nG1",
    0x95: "nAb1", 0x96: "nA1", 0x97: "nBb1", 0x98: "nB1",
    0x99: "nC2", 0x9A: "nCs2", 0x9B: "nD2", 0x9C: "nEb2",
    0x9D: "nE2", 0x9E: "nF2", 0x9F: "nFs2", 0xA0: "nG2",
    0xA1: "nAb2", 0xA2: "nA2", 0xA3: "nBb2", 0xA4: "nB2",
    0xA5: "nC3", 0xA6: "nCs3", 0xA7: "nD3", 0xA8: "nEb3",
    0xA9: "nE3", 0xAA: "nF3", 0xAB: "nFs3", 0xAC: "nG3",
    0xAD: "nAb3", 0xAE: "nA3", 0xAF: "nBb3", 0xB0: "nB3",
    0xB1: "nC4", 0xB2: "nCs4", 0xB3: "nD4", 0xB4: "nEb4",
    0xB5: "nE4", 0xB6: "nF4", 0xB7: "nFs4", 0xB8: "nG4",
    0xB9: "nAb4", 0xBA: "nA4", 0xBB: "nBb4", 0xBC: "nB4",
    0xBD: "nC5", 0xBE: "nCs5", 0xBF: "nD5", 0xC0: "nEb5",
    0xC1: "nE5", 0xC2: "nF5", 0xC3: "nFs5", 0xC4: "nG5",
    0xC5: "nAb5", 0xC6: "nA5", 0xC7: "nBb5", 0xC8: "nB5",
    0xC9: "nC6", 0xCA: "nCs6", 0xCB: "nD6", 0xCC: "nEb6",
    0xCD: "nE6", 0xCE: "nF6", 0xCF: "nFs6", 0xD0: "nG6",
    0xD1: "nAb6", 0xD2: "nA6", 0xD3: "nBb6", 0xD4: "nB6",
    0xD5: "nC7", 0xD6: "nCs7", 0xD7: "nD7", 0xD8: "nEb7",
    0xD9: "nE7", 0xDA: "nF7", 0xDB: "nFs7", 0xDC: "nG7",
    0xDD: "nAb7", 0xDE: "nA7", 0xDF: "nBb7"
}

def hex_asm68k(i):
    s = hex(i)[2:].upper()
    if len(s) == 1:
        s = "0" + s
    return "$" + s

def write_asm(proj, input, output):
    indent_level = 1

    def write(data, indent=None):
        output.write('	' * (indent and indent or indent_level - 1) + data + "\n")
    def write_comment(text):
        for line in text.splitlines(False):
            write("; " + line)

    def start_block(name):
        write(proj + "_" + name + ":")
        return indent_level + 1

    def end_block():
        write("", indent_level - 1)
        return indent_level - 1

    def write_instruction_simple(name, arg):
        write((name + "	" + arg).rstrip())

    def write_instruction_iter(name, args):
        args = map(lambda x: str(x), args)
        write_instruction_simple(name, ", ".join(args))

    def write_instruction_i_bytes(name, i):
        write_instruction_iter(name, (read_byte_s() for _ in range(i)))

    def write_instruction(name, *args):
        if args is None or len(args) < 0:
            write(name, indent_level)
            return
        write_instruction_iter(name, args)

    def write_instruction_buffer(name, *args):
        if args is None or len(args) < 0:
            write(name, indent_level)
            return
        args = map(lambda x: str(x), args)
        return (name + "	" + ", ".join(args)).rstrip()

    def write_dcb(vals):
        this_line = []
        for i, v in enumerate(vals):
            if i > 0 and i % 10 == 0:
                write_instruction_simple("dc.b", ", ".join(this_line))
                this_line = []
            this_line.append(v)
        if len(this_line) > 0:
            write_instruction_simple("dc.b", ", ".join(this_line))
            this_line = []

    def read_byte():
        return struct.unpack(">B", input.read(1))[0]
    def read_byte_s():
        return hex_asm68k(read_byte())
    def read_short():
        return struct.unpack(">h", input.read(2))[0]
    def read_short_s():
        return hex_asm68k(read_short())

    def label_from_loc(locs, loc, name):
        if not locs.get(loc, None):
            locs[loc] = name
        return proj + "_" + locs[loc]
    def sub_from_pos(locs, pos, total_subrountines, offset=0):
        # TODO: loc-pos-1
        loc = read_short() + pos + 1 + offset # ???
        assert loc < eof
        if not locs.get(loc, None):
            total_subrountines = total_subrountines + 1
        label = label_from_loc(locs, loc, "Sub" + str(total_subrountines))
        return label, total_subrountines

    def write_command(this_short, total_subrountines, pos):
        buffer = ""
        if this_short == 0xe0:
            buffer = write_instruction_buffer("smpsPan", read_byte_s())
        elif this_short == 0xe1:
            buffer = write_instruction_buffer("smpsAlterNote", read_byte_s())
        elif this_short == 0xe2:
            buffer = write_instruction_buffer("smpsCommFlag", read_byte_s())
        elif this_short == 0xe3:
            buffer = write_instruction_buffer("smpsCDDALoopFlag", read_byte())
        elif this_short == 0xe6:
            buffer = write_instruction_buffer("smpsAlterVol", read_byte_s())
        elif this_short == 0xe7:
            buffer = write_instruction_buffer("smpsSetLegato", read_byte_s())
        elif this_short == 0xe8:
            buffer = write_instruction_buffer("smpsSetStaccato", read_byte_s())
        elif this_short == 0xea:
            buffer = write_instruction_buffer("smpsSetTempoMod", read_byte_s())
        elif this_short == 0xeb:
            buffer = write_instruction_buffer("smpsPlaySound", read_byte_s())
        elif this_short == 0xef:
            buffer = write_instruction_buffer("smpsSetvoice", read_byte_s())
        elif this_short >= 0xf0 and this_short <= 0xf2:
            buffer = write_instruction_buffer("smpsStop")
        elif this_short == 0xf4 or this_short == 0xf6:
            label, total_subrountines = sub_from_pos(locs, pos, total_subrountines)
            buffer = write_instruction_buffer("smpsJump" + (this_short == 0xf6 and "F6" or ""), label)
        elif this_short == 0xf7:
            index = read_byte()
            loops = read_byte()
            label, total_subrountines = sub_from_pos(locs, pos, total_subrountines, offset=2)
            buffer = write_instruction_buffer("smpsLoop", index, loops, label)
        elif this_short == 0xf8:
            label, total_subrountines = sub_from_pos(locs, pos, total_subrountines)
            buffer = write_instruction_buffer("smpsCall", label)
        elif this_short == 0xf9:
            buffer = write_instruction_buffer("smpsReturn")
        elif this_short == 0xfa:
            buffer = write_instruction_buffer("smpsChanTempoDiv", read_byte_s())
        elif this_short == 0xfb:
            buffer = write_instruction_buffer("smpsSetTempoDiv", read_byte_s())
        else:
            buffer = write_instruction_buffer("dc.b", hex_asm68k(this_short), "; WARNING: unknown command")
        return buffer, total_subrountines


    indent_level = start_block("Header")

    input.read(2) # TODO: ???
    write_instruction("smpsHeaderStartSong")
    channels = read_byte()
    write_instruction("smpsHeaderChan", hex_asm68k(channels))
    input.read(1) # TODO: ???
    write_instruction_i_bytes("smpsHeaderTempo", 2)

    write("")
    locs = {}
    for i in range(channels):
        loc = read_short()
        write_instruction("smpsHeaderPCM", label_from_loc(locs, loc, "PCM" + str(i + 1)), read_byte_s(), read_byte_s())

    indent_level = end_block()

    orig_pointer = input.tell()
    input.read()
    eof = input.tell()
    input.seek(orig_pointer)

    total_subrountines = 0
    # look for subroutines
    while True:
        pos = input.tell()
        if pos >= eof:
            break
        this_short = read_byte()
        pos = input.tell()
        if this_short >= 0xe0:
            buffer, total_subrountines = write_command(this_short, total_subrountines, pos)
    input.seek(orig_pointer)

    notes = []
    while True:
        pos = input.tell()
        if pos >= eof:
            break

        header = locs.get(pos, None)
        if header:
            if len(notes) > 0:
                indent_level = indent_level < 2 and 2 or indent_level
                write_dcb(notes)
                notes = []
            if indent_level > 1:
                indent_level = end_block()
            indent_level = start_block(header)

        this_short = read_byte()
        pos = input.tell()
        if this_short >= 0xe0:
            buffer, total_subrountines = write_command(this_short, total_subrountines, pos)
            write_dcb(notes)
            notes = []
            write(buffer)
        else:
            notes.append(NOTES.get(this_short, None) or hex_asm68k(this_short))

    if len(notes) > 0:
        indent_level = indent_level < 2 and 2 or indent_level
        write_dcb(notes)
        notes = []

def main():
    project_name = input("name : ")
    orig_bin = input("file : ")
    out_file = input("out file : ")

    with open(out_file, "w") as output:
        with open(orig_bin, "rb") as f:
            write_asm(project_name, f, output)

if __name__ == "__main__":
    main()