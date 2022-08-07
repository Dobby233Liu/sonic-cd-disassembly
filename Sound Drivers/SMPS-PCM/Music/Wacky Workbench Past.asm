Song_WWZPast_Header:
	smpsHeaderStartSong
	smpsHeaderChan	$08
	smpsHeaderTempo	$01, $05
	
	smpsHeaderPCM	Song_WWZPast_PCM1, $00, $6F
	smpsHeaderPCM	Song_WWZPast_PCM2, $05, $9F
	smpsHeaderPCM	Song_WWZPast_PCM3, $00, $AF
	smpsHeaderPCM	Song_WWZPast_PCM4, $00, $9F
	smpsHeaderPCM	Song_WWZPast_PCM5, $05, $7F
	smpsHeaderPCM	Song_WWZPast_PCM6, $0B, $9F
	smpsHeaderPCM	Song_WWZPast_PCM7, $00, $BF
	smpsHeaderPCM	Song_WWZPast_PCM8, $03, $9F
	
Song_WWZPast_PCM2:
	smpsSetvoice	$00
	smpsChangeTransposition	$03
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$F7
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$02
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$02
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$02
	smpsLoop	1, 8, Song_WWZPast_PCM2
	smpsAlterVol	$EC
	
Song_WWZPast_Call02:
	smpsSetvoice	$0F
	dc.b	nRst, $0C, nBb1, nBb1, $18, nC2, $12, nC2, nC2, $0C
	smpsLoop	0, 8, Song_WWZPast_Call02
	smpsChangeTransposition	$FE
	
Song_WWZPast_Call03:
	smpsSetvoice	$0F
	dc.b	nRst, $0C, nBb1, nBb1, $18, nC2, $12, nC2, nC2, $0C
	smpsLoop	0, 8, Song_WWZPast_Call03
	smpsChangeTransposition	$02
	smpsAlterVol	$14
	
Song_WWZPast_Call04:
	smpsSetvoice	$00
	smpsChangeTransposition	$03
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$F7
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$02
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$02
	smpsCall	Song_WWZPast_Call01
	smpsChangeTransposition	$02
	smpsLoop	1, 2, Song_WWZPast_Call04
	smpsJumpF6	Song_WWZPast_PCM2
	smpsStop
	
Song_WWZPast_Call01:
	smpsPan	$DD
	dc.b	nC2, $18
	smpsAlterVol	$E7
	smpsPan	$7F
	dc.b	nC2, $18
	smpsAlterVol	$E7
	smpsPan	$F7
	dc.b	nC2, $18
	smpsAlterVol	$E7
	smpsPan	$7F
	dc.b	nC2, $18
	smpsAlterVol	$4B
	smpsReturn
	
Song_WWZPast_PCM3:
	smpsSetvoice	$01
	dc.b	nC2, $18
	smpsLoop	0, 8, Song_WWZPast_PCM3
	
Song_WWZPast_Jump05:
	smpsSetvoice	$01
	dc.b	nC2, $0C
	smpsSetvoice	$02
	dc.b	nC2, $0C
	smpsJumpF6	Song_WWZPast_Jump05
	smpsStop
	
Song_WWZPast_PCM4:
	smpsChangeTransposition	$06
	
Song_WWZPast_Call06:
	smpsSetvoice	$03
	dc.b	nRst, $0C, nC2, $18, nC2, $12, nBb1, $0C, nBb1, $06
	dc.b	nC2, $0C, nEb2
	smpsLoop	0, 4, Song_WWZPast_Call06
	
Song_WWZPast_Call08:
	smpsCall	Song_WWZPast_Call07
	smpsLoop	0, 4, Song_WWZPast_Call08
	
Song_WWZPast_Call0A:
	smpsCall	Song_WWZPast_Call09
	smpsLoop	1, 48, Song_WWZPast_Call0A
	smpsChangeTransposition	$FA
	smpsJumpF6	Song_WWZPast_PCM4
	smpsStop
	
Song_WWZPast_Call07:
	smpsSetvoice	$06
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	smpsReturn
	
Song_WWZPast_Call09:
	smpsSetvoice	$06
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	smpsSetvoice	$09
	dc.b	nA1, $0C
	smpsSetvoice	$06
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	smpsSetvoice	$09
	dc.b	nA1, $0C
	smpsSetvoice	$06
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	smpsSetvoice	$09
	dc.b	nA1, $0C
	smpsSetvoice	$06
	dc.b	nC2, $06
	smpsAlterVol	$EC
	dc.b	nC2, $06
	smpsAlterVol	$14
	smpsSetvoice	$09
	dc.b	nA1, $0C
	smpsReturn
	
Song_WWZPast_PCM5:
	smpsAlterNote	$F8
	
Song_WWZPast_Call0C:
	smpsSetvoice	$04
	dc.b	nC2, $06, nBb1, nG1, nC2, nBb1, nG1, nC2, nBb1, nG1
	dc.b	nC2, nBb1, nG1, nC2, $0C, nBb1
	
Song_WWZPast_Call0B:
	smpsAlterVol	$F6
	smpsPan	$7F
	dc.b	nC2, $0C, nBb1
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nC2, $0C, nBb1
	smpsLoop	0, 2, Song_WWZPast_Call0B
	smpsAlterVol	$28
	smpsPan	$FF
	smpsLoop	1, 4, Song_WWZPast_Call0C
	
Song_WWZPast_Call0D:
	smpsSetvoice	$04
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, $0C, nEb2, $12
	smpsAlterVol	$EC
	dc.b	nEb2, $0C
	smpsAlterVol	$14
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, nFs1, nF1, $0C, nEb1, $0C, nC1, $06
	smpsLoop	0, 4, Song_WWZPast_Call0D
	
Song_WWZPast_Call0E:
	smpsAlterVol	$14
	dc.b	nG1, $0C
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nG1, $0C
	smpsAlterVol	$F9
	smpsPan	$F7
	dc.b	nG1, $0C
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nG1, $0C
	smpsAlterVol	$F9
	smpsPan	$F7
	dc.b	nG1, $0C
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nG1, $06
	smpsAlterVol	$F9
	smpsPan	$FF
	smpsAlterVol	$2A
	dc.b	nG1, $06, nBb1, nG1, nBb1, $0C, nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$F7
	dc.b	nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$F7
	dc.b	nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$F7
	dc.b	nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nC2, $0C
	smpsAlterVol	$F9
	smpsPan	$FF
	smpsAlterVol	$38
	smpsAlterVol	$EC
	smpsLoop	0, 4, Song_WWZPast_Call0E
	
Song_WWZPast_Call0F:
	smpsSetvoice	$04
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, $0C, nEb2, $12
	smpsAlterVol	$EC
	dc.b	nEb2, $0C
	smpsAlterVol	$14
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, nFs1, nF1, $0C, nEb1, $0C, nC1, $06
	smpsLoop	0, 4, Song_WWZPast_Call0F
	
Song_WWZPast_Call11:
	smpsCall	Song_WWZPast_Call10
	smpsLoop	0, 8, Song_WWZPast_Call11
	smpsChangeTransposition	$FE
	
Song_WWZPast_Call12:
	smpsCall	Song_WWZPast_Call10
	smpsLoop	0, 8, Song_WWZPast_Call12
	smpsChangeTransposition	$02
	
Song_WWZPast_Call13:
	dc.b	nC1, $0C, nEb1, nF1, nFs1, $06, nC1, $0C, nEb1, nEb1
	dc.b	$06, nF1, $0C, nFs1
	smpsLoop	0, 8, Song_WWZPast_Call13
	smpsJumpF6	Song_WWZPast_Call0C
	smpsStop
	
Song_WWZPast_Call10:
	dc.b	nBb1, $06, nC2, nA1, $0C, nG1, $0C
	smpsAlterVol	$F1
	dc.b	nG1, $0C
	smpsAlterVol	$F6
	dc.b	nG1
	smpsAlterVol	$F6
	dc.b	nG1
	smpsAlterVol	$F6
	dc.b	nG1
	smpsAlterVol	$2D
	dc.b	nG1, $06, nG1
	smpsReturn
	
Song_WWZPast_PCM6:
	smpsSetvoice	$05
	dc.b	nC1, $0C, nC1, $18, nC1, $0C, nRst, $24, nG0, $06
	dc.b	nBb0
	smpsLoop	0, 8, Song_WWZPast_PCM6
	
Song_WWZPast_Call14:
	smpsSetvoice	$05
	dc.b	nC1, $0C, nEb1, nF1, nFs1, $06, nC1, $0C, nEb1, nEb1
	dc.b	$06, nF1, $0C, nFs1
	smpsLoop	0, 24, Song_WWZPast_Call14
	
Song_WWZPast_Call15:
	dc.b	nC1, $0C, nG0, nBb0, nB0, $06, nC1, $0C, nG0, nG0
	dc.b	$06, nBb0, $0C, nB0
	smpsLoop	0, 8, Song_WWZPast_Call15
	smpsChangeTransposition	$FE
	
Song_WWZPast_Call16:
	dc.b	nC1, $0C, nG0, nBb0, nB0, $06, nC1, $0C, nG0, nG0
	dc.b	$06, nBb0, $0C, nB0
	smpsLoop	0, 8, Song_WWZPast_Call16
	smpsChangeTransposition	$02
	
Song_WWZPast_Call17:
	dc.b	nC1, $0C, nEb1, nF1, nFs1, $06, nC1, $0C, nEb1, nEb1
	dc.b	$06, nF1, $0C, nFs1
	smpsLoop	0, 8, Song_WWZPast_Call17
	smpsJumpF6	Song_WWZPast_PCM6
	smpsStop
	
Song_WWZPast_PCM7:
	smpsCall	Song_WWZPast_Call18
	
Song_WWZPast_Call1A:
	smpsCall	Song_WWZPast_Call19
	smpsLoop	0, 6, Song_WWZPast_Call1A
	smpsCall	Song_WWZPast_Call1B
	smpsCall	Song_WWZPast_Call18
	
Song_WWZPast_Call1C:
	smpsCall	Song_WWZPast_Call19
	smpsLoop	0, 6, Song_WWZPast_Call1C
	smpsCall	Song_WWZPast_Call1D
	smpsLoop	1, 3, Song_WWZPast_PCM7
	smpsCall	Song_WWZPast_Call18
	
Song_WWZPast_Call1E:
	smpsCall	Song_WWZPast_Call19
	smpsLoop	0, 6, Song_WWZPast_Call1E
	smpsCall	Song_WWZPast_Call1B
	smpsJumpF6	Song_WWZPast_PCM7
	smpsStop
	
Song_WWZPast_Call18:
	smpsSetvoice	$0E
	smpsAlterVol	$28
	smpsPan	$7F
	dc.b	nF2, $18
	smpsAlterVol	$D8
	smpsSetvoice	$07
	smpsPan	$FF
	dc.b	nE2, $18
	smpsSetvoice	$08
	smpsPan	$7F
	dc.b	nRst, $06, nFs2, $0C, nFs2, $06
	smpsSetvoice	$07
	smpsPan	$FF
	dc.b	nE2, $18
	smpsReturn
	
Song_WWZPast_Call19:
	smpsSetvoice	$08
	smpsPan	$7F
	dc.b	nRst, $0C, nFs2, $0C
	smpsSetvoice	$07
	smpsPan	$FF
	dc.b	nE2, $18
	smpsSetvoice	$08
	smpsPan	$7F
	dc.b	nRst, $06, nFs2, $0C, nFs2, $06
	smpsSetvoice	$07
	smpsPan	$FF
	dc.b	nE2, $18
	smpsReturn
	
Song_WWZPast_Call1B:
	smpsSetvoice	$08
	smpsPan	$7F
	dc.b	nRst, $0C, nFs2, $0C
	smpsSetvoice	$07
	smpsPan	$FF
	dc.b	nE2, $18
	smpsSetvoice	$08
	smpsPan	$7F
	dc.b	nRst, $06, nFs2, $0C
	smpsSetvoice	$0D
	smpsPan	$5B
	dc.b	nA2, $02, nA2, nA2
	smpsPan	$DD
	dc.b	nD2, $06, nD2
	smpsPan	$B5
	dc.b	nA1, $0C
	smpsPan	$FF
	smpsReturn
	
Song_WWZPast_Call1D:
	smpsSetvoice	$08
	smpsPan	$7F
	dc.b	nRst, $0C, nFs2, $0C
	smpsSetvoice	$07
	smpsPan	$FF
	dc.b	nE2, $18
	smpsSetvoice	$08
	smpsPan	$7F
	dc.b	nRst, $06, nFs2, $0C
	smpsSetvoice	$0D
	smpsPan	$5B
	dc.b	nA2, $06
	smpsPan	$DD
	dc.b	nD2, $0C
	smpsPan	$B5
	dc.b	nA1, $06, nA1
	smpsPan	$FF
	smpsReturn
	
Song_WWZPast_PCM8:
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	
Song_WWZPast_Call20:
	smpsChangeTransposition	$05
	smpsAlterNote	$F3
	smpsSetvoice	$0B
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, $0C, nEb2, $0C, nRst, $06
	smpsAlterVol	$EC
	dc.b	nEb2, $0C
	smpsAlterVol	$14
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, nFs1, nF1, $0C, nEb1, $0C, nC1, $06
	smpsAlterNote	$0D
	smpsChangeTransposition	$FB
	
Song_WWZPast_Call1F:
	smpsSetvoice	$0A
	smpsAlterVol	$E2
	dc.b	nBb1, $06, nC2, nEb2, nC2, nFs2, $0C, nC2, $06, nF2
	dc.b	$0C, nC2, $06, nEb2, $0C, nC2, nRst
	smpsAlterVol	$1E
	smpsLoop	0, 2, Song_WWZPast_Call1F
	smpsLoop	1, 2, Song_WWZPast_Call20
	
Song_WWZPast_Call21:
	smpsSetvoice	$0C
	smpsAlterVol	$C4
	smpsPan	$8F
	dc.b	nF2, $06, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$DF
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$FD
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$F8
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$FD
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2, nF2, nEb2
	smpsPan	$FF
	smpsAlterVol	$3C
	smpsLoop	0, 4, Song_WWZPast_Call21
	
Song_WWZPast_Call23:
	smpsChangeTransposition	$05
	smpsAlterNote	$F3
	smpsSetvoice	$0B
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, $0C, nEb2, $0C, nRst, $06
	smpsAlterVol	$EC
	dc.b	nEb2, $0C
	smpsAlterVol	$14
	dc.b	nRst, $0C, nC2, nC2
	smpsAlterVol	$EC
	dc.b	nC2
	smpsAlterVol	$14
	dc.b	nBb1, $06, nC2, nFs1, nF1, $0C, nEb1, $0C, nC1, $06
	smpsAlterNote	$0D
	smpsChangeTransposition	$FB
	
Song_WWZPast_Call22:
	smpsSetvoice	$0A
	smpsAlterVol	$E2
	dc.b	nBb1, $06, nC2, nEb2, nC2, nFs2, $0C, nC2, $06, nF2
	dc.b	$0C, nC2, $06, nEb2, $0C, nC2, nRst
	smpsAlterVol	$1E
	smpsLoop	0, 2, Song_WWZPast_Call22
	smpsLoop	1, 2, Song_WWZPast_Call23
	smpsChangeTransposition	$04
	smpsAlterVol	$1E
	
Song_WWZPast_Call24:
	smpsSetvoice	$03
	dc.b	nD1, $18, nD1, $0C, nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$28
	dc.b	nRst, $0C, nD1
	smpsAlterVol	$F6
	dc.b	nD1
	smpsAlterVol	$F6
	dc.b	nD1
	smpsAlterVol	$14
	dc.b	nE2
	smpsAlterVol	$F6
	dc.b	nE2
	smpsAlterVol	$0A
	dc.b	nD2
	smpsAlterVol	$F6
	dc.b	nD2
	smpsAlterVol	$0A
	smpsLoop	0, 4, Song_WWZPast_Call24
	smpsChangeTransposition	$FE
	
Song_WWZPast_Call25:
	smpsSetvoice	$03
	dc.b	nD1, $18, nD1, $0C, nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$F6
	dc.b	nE1
	smpsAlterVol	$28
	dc.b	nRst, $0C, nD1
	smpsAlterVol	$F6
	dc.b	nD1
	smpsAlterVol	$F6
	dc.b	nD1
	smpsAlterVol	$14
	dc.b	nE2
	smpsAlterVol	$F6
	dc.b	nE2
	smpsAlterVol	$0A
	dc.b	nD2
	smpsAlterVol	$F6
	dc.b	nD2
	smpsAlterVol	$0A
	smpsLoop	0, 4, Song_WWZPast_Call25
	smpsChangeTransposition	$FE
	smpsAlterVol	$E2
	
Song_WWZPast_Call26:
	smpsSetvoice	$0C
	smpsAlterVol	$C4
	smpsPan	$8F
	dc.b	nF2, $06, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$DF
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$FD
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$F8
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$FD
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2, nF2, nEb2
	smpsPan	$FF
	smpsAlterVol	$3C
	smpsLoop	0, 3, Song_WWZPast_Call26
	smpsSetvoice	$0C
	smpsAlterVol	$C4
	smpsPan	$8F
	dc.b	nF2, $06, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$DF
	dc.b	nF2, nEb2, nC2, nBb1, nC2, nEb2
	smpsPan	$FD
	dc.b	nF2, nEb2, nC2, nBb1
	smpsPan	$FF
	smpsAlterVol	$3C
	smpsSetvoice	$0A
	smpsAlterVol	$E2
	dc.b	nC2, $0C, nEb2, nF2, nFs2, $06, nC2, $0C, nEb2, nEb2
	dc.b	$06, nF2, $0C, nFs2
	smpsAlterVol	$1E
	smpsJumpF6	Song_WWZPast_PCM8
	smpsStop
	
Song_WWZPast_PCM1:
	smpsStop
