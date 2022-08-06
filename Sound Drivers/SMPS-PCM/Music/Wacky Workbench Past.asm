WWZPast_Header:
	smpsHeaderStartSong
	smpsHeaderChan	$08
	smpsHeaderTempo	$01, $05
	
	smpsHeaderPCM	WWZPast_PCM1, $00, $6F
	smpsHeaderPCM	WWZPast_PCM2, $05, $9F
	smpsHeaderPCM	WWZPast_PCM3, $00, $AF
	smpsHeaderPCM	WWZPast_PCM4, $00, $9F
	smpsHeaderPCM	WWZPast_PCM5, $05, $7F
	smpsHeaderPCM	WWZPast_PCM6, $0B, $9F
	smpsHeaderPCM	WWZPast_PCM7, $00, $BF
	smpsHeaderPCM	WWZPast_PCM8, $03, $9F
	
WWZPast_PCM2:
	smpsSetvoice	$00
	smpsSetTempoDiv	$03
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$F7
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$02
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$02
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$02
	smpsLoop	1, 8, WWZPast_PCM2
	smpsAlterVol	$EC
	
WWZPast_Sub2:
	smpsSetvoice	$0F
	dc.b	nRst, $0C, nBb1, nBb1, $18, nC2, $12, nC2, nC2, $0C
	smpsLoop	0, 8, WWZPast_Sub2
	smpsSetTempoDiv	$FE
	
WWZPast_Sub3:
	smpsSetvoice	$0F
	dc.b	nRst, $0C, nBb1, nBb1, $18, nC2, $12, nC2, nC2, $0C
	smpsLoop	0, 8, WWZPast_Sub3
	smpsSetTempoDiv	$02
	smpsAlterVol	$14
	
WWZPast_Sub4:
	smpsSetvoice	$00
	smpsSetTempoDiv	$03
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$F7
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$02
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$02
	smpsCall	WWZPast_Sub1
	smpsSetTempoDiv	$02
	smpsLoop	1, 2, WWZPast_Sub4
	smpsJumpF6	WWZPast_PCM2
	smpsStop
	
WWZPast_Sub1:
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
	
WWZPast_PCM3:
	smpsSetvoice	$01
	dc.b	nC2, $18
	smpsLoop	0, 8, WWZPast_PCM3
	
WWZPast_Sub5:
	smpsSetvoice	$01
	dc.b	nC2, $0C
	smpsSetvoice	$02
	dc.b	nC2, $0C
	smpsJumpF6	WWZPast_Sub5
	smpsStop
	
WWZPast_PCM4:
	smpsSetTempoDiv	$06
	
WWZPast_Sub6:
	smpsSetvoice	$03
	dc.b	nRst, $0C, nC2, $18, nC2, $12, nBb1, $0C, nBb1, $06
	dc.b	nC2, $0C, nEb2
	smpsLoop	0, 4, WWZPast_Sub6
	
WWZPast_Sub8:
	smpsCall	WWZPast_Sub7
	smpsLoop	0, 4, WWZPast_Sub8
	
WWZPast_Sub10:
	smpsCall	WWZPast_Sub9
	smpsLoop	1, 48, WWZPast_Sub10
	smpsSetTempoDiv	$FA
	smpsJumpF6	WWZPast_PCM4
	smpsStop
	
WWZPast_Sub7:
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
	
WWZPast_Sub9:
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
	
WWZPast_PCM5:
	smpsAlterNote	$F8
	
WWZPast_Sub12:
	smpsSetvoice	$04
	dc.b	nC2, $06, nBb1, nG1, nC2, nBb1, nG1, nC2, nBb1, nG1
	dc.b	nC2, nBb1, nG1, nC2, $0C, nBb1
	
WWZPast_Sub11:
	smpsAlterVol	$F6
	smpsPan	$7F
	dc.b	nC2, $0C, nBb1
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nC2, $0C, nBb1
	smpsLoop	0, 2, WWZPast_Sub11
	smpsAlterVol	$28
	smpsPan	$FF
	smpsLoop	1, 4, WWZPast_Sub12
	
WWZPast_Sub13:
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
	smpsLoop	0, 4, WWZPast_Sub13
	
WWZPast_Sub14:
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
	smpsLoop	0, 4, WWZPast_Sub14
	
WWZPast_Sub15:
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
	smpsLoop	0, 4, WWZPast_Sub15
	
WWZPast_Sub17:
	smpsCall	WWZPast_Sub16
	smpsLoop	0, 8, WWZPast_Sub17
	smpsSetTempoDiv	$FE
	
WWZPast_Sub18:
	smpsCall	WWZPast_Sub16
	smpsLoop	0, 8, WWZPast_Sub18
	smpsSetTempoDiv	$02
	
WWZPast_Sub19:
	dc.b	nC1, $0C, nEb1, nF1, nFs1, $06, nC1, $0C, nEb1, nEb1
	dc.b	$06, nF1, $0C, nFs1
	smpsLoop	0, 8, WWZPast_Sub19
	smpsJumpF6	WWZPast_Sub12
	smpsStop
	
WWZPast_Sub16:
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
	
WWZPast_PCM6:
	smpsSetvoice	$05
	dc.b	nC1, $0C, nC1, $18, nC1, $0C, nRst, $24, nG0, $06
	dc.b	nBb0
	smpsLoop	0, 8, WWZPast_PCM6
	
WWZPast_Sub20:
	smpsSetvoice	$05
	dc.b	nC1, $0C, nEb1, nF1, nFs1, $06, nC1, $0C, nEb1, nEb1
	dc.b	$06, nF1, $0C, nFs1
	smpsLoop	0, 24, WWZPast_Sub20
	
WWZPast_Sub21:
	dc.b	nC1, $0C, nG0, nBb0, nB0, $06, nC1, $0C, nG0, nG0
	dc.b	$06, nBb0, $0C, nB0
	smpsLoop	0, 8, WWZPast_Sub21
	smpsSetTempoDiv	$FE
	
WWZPast_Sub22:
	dc.b	nC1, $0C, nG0, nBb0, nB0, $06, nC1, $0C, nG0, nG0
	dc.b	$06, nBb0, $0C, nB0
	smpsLoop	0, 8, WWZPast_Sub22
	smpsSetTempoDiv	$02
	
WWZPast_Sub23:
	dc.b	nC1, $0C, nEb1, nF1, nFs1, $06, nC1, $0C, nEb1, nEb1
	dc.b	$06, nF1, $0C, nFs1
	smpsLoop	0, 8, WWZPast_Sub23
	smpsJumpF6	WWZPast_PCM6
	smpsStop
	
WWZPast_PCM7:
	smpsCall	WWZPast_Sub24
	
WWZPast_Sub26:
	smpsCall	WWZPast_Sub25
	smpsLoop	0, 6, WWZPast_Sub26
	smpsCall	WWZPast_Sub27
	smpsCall	WWZPast_Sub24
	
WWZPast_Sub28:
	smpsCall	WWZPast_Sub25
	smpsLoop	0, 6, WWZPast_Sub28
	smpsCall	WWZPast_Sub29
	smpsLoop	1, 3, WWZPast_PCM7
	smpsCall	WWZPast_Sub24
	
WWZPast_Sub30:
	smpsCall	WWZPast_Sub25
	smpsLoop	0, 6, WWZPast_Sub30
	smpsCall	WWZPast_Sub27
	smpsJumpF6	WWZPast_PCM7
	smpsStop
	
WWZPast_Sub24:
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
	
WWZPast_Sub25:
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
	
WWZPast_Sub27:
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
	
WWZPast_Sub29:
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
	
WWZPast_PCM8:
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	
WWZPast_Sub32:
	smpsSetTempoDiv	$05
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
	smpsSetTempoDiv	$FB
	
WWZPast_Sub31:
	smpsSetvoice	$0A
	smpsAlterVol	$E2
	dc.b	nBb1, $06, nC2, nEb2, nC2, nFs2, $0C, nC2, $06, nF2
	dc.b	$0C, nC2, $06, nEb2, $0C, nC2, nRst
	smpsAlterVol	$1E
	smpsLoop	0, 2, WWZPast_Sub31
	smpsLoop	1, 2, WWZPast_Sub32
	
WWZPast_Sub33:
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
	smpsLoop	0, 4, WWZPast_Sub33
	
WWZPast_Sub35:
	smpsSetTempoDiv	$05
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
	smpsSetTempoDiv	$FB
	
WWZPast_Sub34:
	smpsSetvoice	$0A
	smpsAlterVol	$E2
	dc.b	nBb1, $06, nC2, nEb2, nC2, nFs2, $0C, nC2, $06, nF2
	dc.b	$0C, nC2, $06, nEb2, $0C, nC2, nRst
	smpsAlterVol	$1E
	smpsLoop	0, 2, WWZPast_Sub34
	smpsLoop	1, 2, WWZPast_Sub35
	smpsSetTempoDiv	$04
	smpsAlterVol	$1E
	
WWZPast_Sub36:
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
	smpsLoop	0, 4, WWZPast_Sub36
	smpsSetTempoDiv	$FE
	
WWZPast_Sub37:
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
	smpsLoop	0, 4, WWZPast_Sub37
	smpsSetTempoDiv	$FE
	smpsAlterVol	$E2
	
WWZPast_Sub38:
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
	smpsLoop	0, 3, WWZPast_Sub38
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
	smpsJumpF6	WWZPast_PCM8
	smpsStop
	
WWZPast_PCM1:
	smpsStop
