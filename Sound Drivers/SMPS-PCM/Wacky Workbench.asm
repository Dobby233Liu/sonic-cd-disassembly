; -------------------------------------------------------------------------
; Sonic CD Disassembly
; By Ralakimus 2021
; -------------------------------------------------------------------------
; SMPS-PCM driver (Wacky Workbench Zone)
; -------------------------------------------------------------------------

	include	"_Include/Common.i"
	include	"_Include/Sub CPU.i"
	include	"_Include/Sound.i"
	include "Sound Drivers/SMPS-PCM/_smps2asm_inc.asm"

; -------------------------------------------------------------------------
; Driver
; -------------------------------------------------------------------------

	org	PCMDriver
	dc.b	"SNCBNK30.S28    "
	include	"Sound Drivers/SMPS-PCM/_Driver.asm"

; -------------------------------------------------------------------------
; Sound effect index
; -------------------------------------------------------------------------

SFXIndex:
	dc.l	SFX_Future
	dc.l	SFX_Past
	dc.l	SFX_Alright
	dc.l	SFX_OuttaHere
	dc.l	SFX_Yes
	dc.l	SFX_Yeah
	dc.l	SFX_AmyGiggle
	dc.l	SFX_AmyYelp
	dc.l	SFX_BossStomp
	dc.l	SFX_Bumper
	dc.l	SFX_Shatter

; -------------------------------------------------------------------------
; Song priority table
; -------------------------------------------------------------------------

SongPriorities:
	dc.b	$80				; Wacky Workbench Zone Past
	even

; -------------------------------------------------------------------------
; Sound effect priority table
; -------------------------------------------------------------------------

SFXPriorities:
	dc.b	$70				; "Future"
	dc.b	$70				; "Past"
	dc.b	$70				; "Alright"
	dc.b	$70				; "I'm outta here"
	dc.b	$70				; "Yes"
	dc.b	$70				; "Yeah"
	dc.b	$70				; Amy giggle
	dc.b	$70				; Amy yelp
	dc.b	$70				; Boss stomp
	dc.b	$70				; Bumper
	dc.b	$70				; Shatter
	even

; -------------------------------------------------------------------------
; Command priority table
; -------------------------------------------------------------------------

CmdPriorities:
	dc.b	$80				; Fade out
	dc.b	$80				; Stop
	dc.b	$80				; Pause
	dc.b	$80				; Unpause
	dc.b	$80				; Mute
	even

; -------------------------------------------------------------------------
; Song index
; -------------------------------------------------------------------------

SongIndex:
	dc.l	Song_WWZPast

; -------------------------------------------------------------------------
; Songs
; -------------------------------------------------------------------------

Song_WWZPast:
	include	"Sound Drivers/SMPS-PCM/Music/Wacky Workbench Past.asm"
	even

; -------------------------------------------------------------------------
; Sound effects
; -------------------------------------------------------------------------

SFX_Future:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Future.asm"
	even
SFX_Past:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Past.asm"
	even
SFX_Alright:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Alright.asm"
	even
SFX_OuttaHere:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Outta Here.asm"
	even
SFX_Yes:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Yes.asm"
	even
SFX_Yeah:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Yeah.asm"
	even
SFX_AmyGiggle:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Amy Giggle.asm"
	even
SFX_AmyYelp:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Amy Yelp.asm"
	even
SFX_BossStomp:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Boss Stomp.asm"
	even
SFX_Bumper:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Bumper.asm"
	even
SFX_Shatter:
	include	"Sound Drivers/SMPS-PCM/SFX/Wacky Workbench/Shatter.asm"
	even

; -------------------------------------------------------------------------
; Sample index
; -------------------------------------------------------------------------

SampleIndex:
	SAMPTBLSTART
	dc.l	Samp_Pad_Metadata
	dc.l	Samp_Kick_Metadata
	dc.l	Samp_Tamborine_Metadata
	dc.l	Samp_Beep_Metadata
	dc.l	Samp_Honk_Metadata
	dc.l	Samp_SynthBass_Metadata
	dc.l	Samp_HatClosed_Metadata
	dc.l	Samp_Snare_Metadata
	dc.l	Samp_Clap_Metadata
	dc.l	Samp_HatOpen_Metadata
	dc.l	Samp_Flute_Metadata
	dc.l	Samp_Piano_Metadata
	dc.l	Samp_SynthBell_Metadata
	dc.l	Samp_Tom_Metadata
	dc.l	Samp_CrashCymbal_Metadata
	dc.l	Samp_Synth_Metadata
	dc.l	Samp_Future_Metadata
	dc.l	Samp_Past_Metadata
	dc.l	Samp_Alright_Metadata
	dc.l	Samp_OuttaHere_Metadata
	dc.l	Samp_Yes_Metadata
	dc.l	Samp_Yeah_Metadata
	dc.l	Samp_BossStomp_Metadata
	dc.l	Samp_Shatter_Metadata
	SAMPTBLEND

; -------------------------------------------------------------------------
; Sample metadata
; -------------------------------------------------------------------------

	SAMPLE	Samp_Pad,		$420E, 0, 0, 0
	SAMPLE	Samp_Kick,		$0A70, 0, 0, 0
	SAMPLE	Samp_Tamborine,		$0C4C, 0, 0, 0
	SAMPLE	Samp_Beep,		$11F0, 0, 0, 0
	SAMPLE	Samp_Honk,		$33F8, 0, 0, 0
	SAMPLE	Samp_SynthBass,		$1462, 0, 0, 0
	SAMPLE	Samp_HatClosed,		$0878, 0, 0, 0
	SAMPLE	Samp_Snare,		$07B5, 0, 0, 0
	SAMPLE	Samp_Clap,		$096E, 0, 0, 0
	SAMPLE	Samp_HatOpen,		$149E, 0, 0, 0
	SAMPLE	Samp_Flute,		$37CE, 0, 0, 0
	SAMPLE	Samp_Piano,		$1C88, 0, 0, 0
	SAMPLE	Samp_SynthBell,		$2890, 0, 0, 0
	SAMPLE	Samp_Tom,		$106E, 0, 0, 0
	SAMPLE	Samp_CrashCymbal,	$3AB0, 0, 0, 0
	SAMPLE	Samp_Synth,		$1D75, 0, 0, 0
	SAMPLE	Samp_Future,		$0000, 0, 0, 0
	SAMPLE	Samp_Past,		$0000, 0, 0, 0
	SAMPLE	Samp_Alright,		$0000, 0, 0, 0
	SAMPLE	Samp_OuttaHere,		$0000, 0, 0, 0
	SAMPLE	Samp_Yes,		$0000, 0, 0, 0
	SAMPLE	Samp_Yeah,		$0000, 0, 0, 0
	SAMPLE	Samp_BossStomp,		$0000, 0, 0, 0
	SAMPLE	Samp_Shatter,		$0000, 0, 0, 0

; -------------------------------------------------------------------------
; Samples
; -------------------------------------------------------------------------

	SAMPDAT	Samp_Pad,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Pad.bin"
	SAMPDAT	Samp_Kick,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Kick.bin"
	SAMPDAT	Samp_Tamborine,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Tamborine.bin"
	SAMPDAT	Samp_Beep,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Beep.bin"
	SAMPDAT	Samp_Honk,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Honk.bin"
	SAMPDAT	Samp_SynthBass,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Synth Bass.bin"
	SAMPDAT	Samp_HatClosed,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Hi-Hat (Closed).bin"
	SAMPDAT	Samp_Snare,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Snare.bin"
	SAMPDAT	Samp_Clap,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Clap.bin"
	SAMPDAT	Samp_HatOpen,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Hi-Hat (Open).bin"
	SAMPDAT	Samp_Flute,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Flute.bin"
	SAMPDAT	Samp_Piano,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Piano.bin"
	SAMPDAT	Samp_SynthBell,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Synth Bell.bin"
	SAMPDAT	Samp_Tom,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Tom.bin"
	SAMPDAT	Samp_CrashCymbal,	"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Crash Cymbal.bin"
	SAMPDAT	Samp_Synth,		"Sound Drivers/SMPS-PCM/Samples/Wacky Workbench/Synth.bin"
	SAMPDAT	Samp_Future,		"Sound Drivers/SMPS-PCM/Samples/Future.bin"
	SAMPDAT	Samp_Past,		"Sound Drivers/SMPS-PCM/Samples/Past.bin"
	SAMPDAT	Samp_Alright,		"Sound Drivers/SMPS-PCM/Samples/Alright.bin"
	SAMPDAT	Samp_OuttaHere,		"Sound Drivers/SMPS-PCM/Samples/Outta Here.bin"
	SAMPDAT	Samp_Yes,		"Sound Drivers/SMPS-PCM/Samples/Yes.bin"
	SAMPDAT	Samp_Yeah,		"Sound Drivers/SMPS-PCM/Samples/Yeah.bin"
	SAMPDAT	Samp_BossStomp,		"Sound Drivers/SMPS-PCM/Samples/Boss Stomp.bin"
	SAMPDAT	Samp_Shatter,		"Sound Drivers/SMPS-PCM/Samples/Shatter.bin"

; -------------------------------------------------------------------------
