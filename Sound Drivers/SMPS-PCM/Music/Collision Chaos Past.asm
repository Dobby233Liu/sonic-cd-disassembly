CCZPast_Header:
	smpsHeaderStartSong
	smpsHeaderChan	$09
	smpsHeaderTempo	$01, $05
	
	smpsHeaderPCM	CCZPast_PCM1, $00, $FF
	smpsHeaderPCM	CCZPast_PCM2, $03, $6F
	smpsHeaderPCM	CCZPast_PCM3, $16, $5F
	smpsHeaderPCM	CCZPast_PCM4, $16, $6F
	smpsHeaderPCM	CCZPast_PCM5, $0A, $6F
	smpsHeaderPCM	CCZPast_PCM6, $0B, $BF
	smpsHeaderPCM	CCZPast_PCM7, $0A, $6F
	smpsHeaderPCM	CCZPast_PCM8, $10, $6F
	smpsHeaderPCM	CCZPast_PCM9, $0A, $6F
	
CCZPast_PCM2:
	smpsSetvoice	$02
	smpsPan	$13
	dc.b	nG1, $03, nG1
	smpsPan	$26
	dc.b	nG1, nG1
	smpsPan	$88
	dc.b	nG1, nG1
	smpsPan	$C8
	dc.b	nG1, nG1
	smpsPan	$F7
	dc.b	nG1, $18
	smpsPan	$26
	dc.b	nG1, $03, nG1, nG1, nG1
	smpsPan	$F7
	dc.b	nG1, $12, nRst, $06
	smpsSetvoice	$03
	smpsPan	$FF
	dc.b	nCs1, $06, nCs1
	smpsSetvoice	$02
	smpsPan	$7F
	dc.b	nG1, $0C
	smpsPan	$FF
	smpsSetvoice	$03
	dc.b	nCs1
	smpsSetvoice	$02
	smpsPan	$F7
	dc.b	nG1, $0C
	smpsPan	$FF
	smpsSetvoice	$03
	dc.b	nCs1
	smpsSetvoice	$02
	smpsPan	$7F
	dc.b	nG1, $0C
	smpsPan	$FF
	smpsSetvoice	$03
	dc.b	nCs1
	smpsSetvoice	$07
	smpsPan	$F3
	dc.b	nCs2, $0C
	smpsPan	$3F
	dc.b	nCs2
	smpsPan	$FF
	
CCZPast_Sub1:
	smpsSetvoice	$03
	dc.b	nCs1, $0C, nRst
	smpsSetvoice	$02
	dc.b	nG1, $18
	smpsSetvoice	$03
	dc.b	nCs1, $0C, nCs1
	smpsSetvoice	$02
	dc.b	nG1, $18
	smpsLoop	0, 7, CCZPast_Sub1
	smpsSetvoice	$03
	dc.b	nCs1, $0C, nCs1
	smpsSetvoice	$02
	dc.b	nG1, nG1
	smpsSetvoice	$03
	dc.b	nCs1, $06
	smpsSetvoice	$02
	dc.b	nG1
	smpsSetvoice	$03
	dc.b	nCs1, $0C
	smpsSetvoice	$05
	dc.b	nG1, nG1
	
CCZPast_Sub2:
	smpsSetvoice	$03
	dc.b	nCs1, $0C, nCs1
	smpsSetvoice	$05
	dc.b	nG1, $12
	smpsAlterVol	$9C
	dc.b	nG1, $06
	smpsAlterVol	$64
	smpsSetvoice	$03
	dc.b	nCs1, $06
	smpsSetvoice	$05
	dc.b	nG1, $06
	smpsSetvoice	$03
	dc.b	nCs1, $0C
	smpsSetvoice	$05
	dc.b	nG1, $18
	smpsSetvoice	$03
	dc.b	nCs1, $0C, nCs1
	smpsSetvoice	$05
	dc.b	nG1, $12
	smpsAlterVol	$9C
	dc.b	nG1, $06
	smpsAlterVol	$64
	smpsSetvoice	$03
	dc.b	nCs1, $06
	smpsSetvoice	$05
	dc.b	nG1, $06
	smpsSetvoice	$03
	dc.b	nCs1, $0C
	smpsSetvoice	$05
	dc.b	nG1, $06, nG1
	smpsSetvoice	$03
	dc.b	nCs1, $0C
	smpsLoop	0, 3, CCZPast_Sub2
	smpsSetvoice	$03
	dc.b	nCs1, $0C, nCs1
	smpsSetvoice	$05
	dc.b	nG1, $12
	smpsAlterVol	$B0
	dc.b	nG1, $06
	smpsAlterVol	$50
	smpsSetvoice	$03
	dc.b	nCs1, $06
	smpsSetvoice	$05
	dc.b	nG1, $06
	smpsSetvoice	$03
	dc.b	nCs1, $0C
	smpsSetvoice	$05
	dc.b	nG1, $18
	smpsSetvoice	$03
	dc.b	nCs1, $0C, nCs1
	smpsSetvoice	$05
	dc.b	nG1, nG1
	smpsSetvoice	$03
	dc.b	nCs1, $06
	smpsSetvoice	$05
	dc.b	nG1
	smpsSetvoice	$03
	dc.b	nCs1, $0C
	smpsSetvoice	$05
	dc.b	nG1, $06, nG1, nG1, nG1
	smpsLoop	1, 4, CCZPast_Sub2
	smpsJumpF6	CCZPast_Sub1
	
CCZPast_PCM3:
	smpsSetvoice	$0E
	smpsAlterVol	$32
	dc.b	nRst, $54, nAb0, $04
	smpsAlterVol	$0A
	dc.b	$04
	smpsAlterVol	$14
	dc.b	$04, nCs0, $0C
	smpsAlterVol	$EC
	smpsPan	$F6
	dc.b	nCs0, $0C
	smpsAlterVol	$EC
	smpsPan	$6F
	dc.b	nCs0, $0C
	smpsAlterVol	$EC
	smpsPan	$F6
	dc.b	nCs0, $0C
	smpsAlterVol	$EC
	smpsPan	$6F
	dc.b	nCs0, $0C
	smpsAlterVol	$F6
	smpsPan	$F6
	dc.b	nCs0, $0C
	smpsAlterVol	$0A
	dc.b	nRst, nRst
	
CCZPast_Sub8:
	smpsPan	$8F
	smpsAlterNote	$FB
	
CCZPast_Sub3:
	smpsSetvoice	$00
	dc.b	nC0, $0C, nBb0, nC1, nC0, nBb0, nBb0, $06, nC1, $0C
	dc.b	nC1, $06, nBb0, $0C
	smpsLoop	0, 16, CCZPast_Sub3
	smpsSetTempoDiv	$01
	smpsAlterNote	$0A
	smpsAlterVol	$B0
	
CCZPast_Sub4:
	smpsSetvoice	$12
	smpsPan	$F0
	dc.b	nEb0, $06
	smpsPan	$FD
	dc.b	nD0
	smpsPan	$DF
	dc.b	nCs0
	smpsPan	$0F
	dc.b	nC0
	smpsLoop	0, 8, CCZPast_Sub4
	smpsSetTempoDiv	$FD
	smpsLoop	1, 2, CCZPast_Sub4
	smpsSetTempoDiv	$06
	smpsLoop	2, 2, CCZPast_Sub4
	
CCZPast_Sub5:
	smpsSetvoice	$12
	smpsAlterVol	$14
	smpsPan	$0F
	dc.b	nC1, $06, nC1
	smpsPan	$8F
	dc.b	nC1, nC1
	smpsPan	$FF
	dc.b	nC1, nC1
	smpsPan	$F8
	dc.b	nC1, nC1
	smpsPan	$F0
	dc.b	nC1, nC1
	smpsPan	$F8
	dc.b	nC1, nC1
	smpsPan	$FF
	dc.b	nC1, nC1
	smpsPan	$8F
	dc.b	nC1, nC1
	smpsAlterVol	$EC
	smpsLoop	0, 4, CCZPast_Sub5
	smpsPan	$FF
	
CCZPast_Sub6:
	smpsAlterVol	$46
	smpsSetvoice	$09
	smpsSetTempoDiv	$F4
	smpsPan	$F6
	dc.b	nC1, $0C
	smpsAlterVol	$CE
	dc.b	nC1
	smpsAlterVol	$32
	smpsPan	$6F
	dc.b	nB0, $0C
	smpsAlterVol	$CE
	dc.b	nB0
	smpsAlterVol	$32
	smpsPan	$F6
	dc.b	nBb0, $0C
	smpsAlterVol	$CE
	dc.b	nBb0, $06
	smpsAlterVol	$32
	smpsPan	$6F
	dc.b	nA0, $0C
	smpsAlterVol	$CE
	dc.b	nA0, $06
	smpsAlterVol	$32
	smpsPan	$F6
	dc.b	nAb0, $0C
	smpsPan	$FF
	smpsSetTempoDiv	$0C
	smpsAlterVol	$BA
	smpsLoop	0, 4, CCZPast_Sub6
	smpsSetTempoDiv	$FF
	smpsAlterNote	$F6
	smpsAlterVol	$50
	
CCZPast_Sub7:
	smpsSetvoice	$00
	dc.b	nC0, $0C, nBb0, nC1, nC0, nBb0, nBb0, $06, nC1, $0C
	dc.b	nC1, $06, nBb0, $0C
	smpsLoop	0, 8, CCZPast_Sub7
	smpsAlterNote	$05
	smpsJumpF6	CCZPast_Sub8
	
CCZPast_PCM4:
	smpsSetTempoDiv	$EA
	smpsAlterVol	$46
	smpsAlterNote	$0A
	smpsSetvoice	$11
	dc.b	nB0, $24, $3C, nB0, $24, $3C
	smpsAlterNote	$F6
	smpsAlterVol	$BA
	smpsSetTempoDiv	$16
	
CCZPast_Sub13:
	smpsSetTempoDiv	$E9
	smpsAlterNote	$06
	smpsAlterVol	$46
	
CCZPast_Sub9:
	smpsPan	$FF
	smpsSetvoice	$11
	dc.b	nC1, $0C, nBb0, nB0, nC1, nRst, nBb0, nB0, nC1
	smpsLoop	0, 16, CCZPast_Sub9
	
CCZPast_Sub10:
	dc.b	nEb1, $0C
	smpsLoop	0, 16, CCZPast_Sub10
	
CCZPast_Sub11:
	dc.b	nC1, $0C
	smpsLoop	0, 16, CCZPast_Sub11
	smpsLoop	1, 2, CCZPast_Sub10
	
CCZPast_Sub12:
	smpsPan	$FF
	smpsSetvoice	$11
	dc.b	nC1, $0C, nBb0, nB0, nC1, nRst, nBb0, nB0, nC1
	smpsLoop	0, 16, CCZPast_Sub12
	smpsAlterVol	$BA
	smpsAlterNote	$FA
	smpsSetTempoDiv	$17
	smpsJumpF6	CCZPast_Sub13
	
CCZPast_PCM5:
	smpsAlterVol	$1E
	smpsSetvoice	$04
	dc.b	nRst, $18, nF1, nRst, $0C, nF1, $18, nRst, $0C, nRst
	dc.b	$18, nF1, nRst, $0C, nF1, $18, nRst, $0C
	smpsAlterVol	$E2
	smpsPan	$FA
	
CCZPast_Sub14:
	smpsSetvoice	$01
	smpsSetTempoDiv	$05
	dc.b	nG0, $0C, nG1, nF1, nE1, nRst, nC1, nRst, nBb0, nRst
	dc.b	nC1, nRst, nG0, nRst
	smpsAlterVol	$91
	dc.b	nG0, $0C, nRst
	smpsAlterVol	$6F
	dc.b	nG0, $06, nA0, nBb0, $0C, nBb0, nA0, nRst, nBb0, $12
	dc.b	nA0, $06, nRst, $0C, nG0, nRst, $0C
	smpsAlterVol	$91
	dc.b	nG0, $0C
	smpsAlterVol	$6F
	smpsSetTempoDiv	$FB
	smpsSetvoice	$04
	smpsAlterVol	$1E
	dc.b	nEb1, $18, nRst, $0C, nEb1, $18, nRst, $0C
	smpsAlterVol	$E2
	smpsSetvoice	$01
	smpsSetTempoDiv	$05
	dc.b	nG0, $0C, nG1, nF1, nE1, nRst, nC1, nRst, nBb0, nRst
	dc.b	nC1, nRst, nG0, nRst
	smpsAlterVol	$91
	dc.b	nG0, $0C, nRst
	smpsAlterVol	$6F
	dc.b	nG0, $06, nA0, nBb0, $0C, nBb0, nA0, nRst, nBb0, $12
	dc.b	nD1, $06, nRst, $0C, nC1, nRst, $0C
	smpsAlterVol	$91
	dc.b	nC1, $0C
	smpsAlterVol	$6F
	smpsSetTempoDiv	$FB
	smpsSetvoice	$04
	smpsAlterVol	$1E
	smpsAlterNote	$FA
	dc.b	nF1, $18, nRst, $0C, nF1, $18, nRst, $0C
	smpsAlterVol	$E2
	smpsAlterNote	$06
	smpsLoop	1, 2, CCZPast_Sub14
	smpsSetvoice	$01
	smpsSetTempoDiv	$05
	dc.b	nG0, $24, nD1, $3C, nRst, $18, nD1, nD1, $12, nEb1
	dc.b	nF1, $0C, nD1, $24, nB0, $3C, nRst, $60, nG0, $24
	dc.b	nD1, $3C, nRst, $18, nD1, nD1, $12, nEb1, nF1, $0C
	dc.b	nG1, $1E, nFs1, $03, nF1, nE1, $3C, nRst, $60
	
CCZPast_Sub15:
	dc.b	nC1, $0C, nG1, nFs1, nF1, nEb1, $12, nC1
	smpsAlterVol	$E2
	dc.b	nC1, $0C
	smpsAlterVol	$1E
	dc.b	nRst, $0C, nG1, nFs1, nF1, nEb1, $06, nC1, nEb1, nF1
	dc.b	nRst, nF1, nEb1, nRst
	smpsLoop	0, 4, CCZPast_Sub15
	
CCZPast_Sub16:
	dc.b	nRst, $06, nRst, nG0, $0C, nBb0, nG0, nBb0, $06, nG0
	dc.b	nBb0, nC1
	smpsAlterVol	$E2
	dc.b	nC1, $0C
	smpsAlterVol	$E2
	dc.b	nC1, $06
	smpsAlterVol	$3C
	dc.b	nG0, $06, nBb0, $0C, nG0, nBb0, $06, nD1, $0C, nC1
	dc.b	nBb0, nG0, nRst, $12, nRst, $06, nRst, nG0, $0C, nBb0
	dc.b	nG0, nBb0, $06, nG0, nBb0, nC1
	smpsAlterVol	$E2
	dc.b	nC1, $0C
	smpsAlterVol	$E2
	dc.b	nC1, $06
	smpsAlterVol	$3C
	dc.b	nG0, $06, nBb0, $0C, nG0, nBb0, $06, nD1, $0C, nC1
	dc.b	$12, nRst, $24
	smpsLoop	0, 2, CCZPast_Sub16
	smpsSetTempoDiv	$FB
	smpsJumpF6	CCZPast_Sub14
	
CCZPast_PCM9:
	smpsStop
	
CCZPast_PCM7:
	smpsSetvoice	$0D
	dc.b	nEb1, $0C, $0C, $0C, $0C
	smpsAlterVol	$10
	dc.b	nEb1, $0C, $0C, $0C, $0C
	smpsAlterVol	$10
	dc.b	nEb1, $0C, $0C, $0C, $0C
	smpsAlterVol	$10
	dc.b	nEb1, $0C, $0C, $0C, $0C
	smpsAlterVol	$D0
	
CCZPast_Sub17:
	smpsPan	$AF
	smpsSetvoice	$0B
	dc.b	nF1, $06, nF1, nF1, $0C
	smpsSetvoice	$06
	smpsPan	$F2
	dc.b	nF1, $0C
	smpsPan	$2F
	dc.b	nF1
	smpsSetvoice	$0B
	dc.b	nF1
	smpsPan	$FA
	dc.b	nF1
	smpsSetvoice	$06
	smpsPan	$2F
	dc.b	nF1
	smpsSetvoice	$0B
	dc.b	nF1, $06, nF1
	smpsPan	$AF
	smpsLoop	0, 7, CCZPast_Sub17
	smpsPan	$AF
	smpsSetvoice	$0B
	dc.b	nF1, $06, nF1, nF1, $0C
	smpsSetvoice	$06
	smpsPan	$F2
	dc.b	nF1, $0C
	smpsPan	$2F
	dc.b	nF1
	smpsSetvoice	$0B
	dc.b	nF1
	smpsSetvoice	$07
	smpsPan	$EE
	dc.b	nF1, $06, nRst
	smpsPan	$2F
	dc.b	nF1, $0C
	smpsPan	$F2
	dc.b	nF1
	smpsJumpF6	CCZPast_Sub17
	
CCZPast_PCM8:
	smpsAlterVol	$14
	smpsSetTempoDiv	$F0
	smpsAlterNote	$F6
	smpsSetvoice	$0F
	smpsPan	$2D
	dc.b	nRst, $54, nF1, $05, nRst, $01
	smpsPan	$D2
	dc.b	nF1, $05, nRst, $01
	smpsPan	$2D
	dc.b	nB0, $18
	smpsAlterVol	$C4
	smpsPan	$D2
	dc.b	nB0
	smpsAlterVol	$C4
	smpsPan	$2D
	dc.b	nB0, $18
	smpsAlterVol	$E2
	smpsPan	$D2
	dc.b	nB0
	smpsAlterVol	$96
	smpsAlterNote	$0A
	smpsAlterVol	$EC
	smpsSetTempoDiv	$10
	
CCZPast_Sub23:
	smpsAlterNote	$F9
	
CCZPast_Sub18:
	smpsSetvoice	$0A
	smpsAlterVol	$0A
	smpsPan	$F9
	smpsSetTempoDiv	$EF
	dc.b	nC1, $0C
	smpsPan	$0F
	smpsAlterVol	$CE
	dc.b	nC1, $0C
	smpsPan	$F6
	smpsAlterVol	$EC
	dc.b	nC1, $0C
	smpsSetTempoDiv	$11
	smpsPan	$FF
	smpsAlterVol	$3C
	smpsLoop	0, 2, CCZPast_Sub18
	dc.b	nRst, $18
	smpsLoop	1, 16, CCZPast_Sub18
	
CCZPast_Sub20:
	smpsSetTempoDiv	$03
	
CCZPast_Sub19:
	smpsSetvoice	$0A
	smpsAlterVol	$0A
	smpsPan	$F9
	smpsSetTempoDiv	$EF
	dc.b	nC1, $0C
	smpsPan	$0F
	smpsAlterVol	$CE
	dc.b	nC1, $0C
	smpsPan	$F6
	smpsAlterVol	$EC
	dc.b	nC1, $0C
	smpsSetTempoDiv	$11
	smpsPan	$FF
	smpsAlterVol	$3C
	smpsLoop	0, 2, CCZPast_Sub19
	dc.b	nRst, $18
	smpsLoop	1, 2, CCZPast_Sub19
	smpsSetTempoDiv	$FD
	smpsLoop	2, 2, CCZPast_Sub19
	smpsSetTempoDiv	$03
	smpsLoop	3, 2, CCZPast_Sub20
	
CCZPast_Sub21:
	smpsSetvoice	$0A
	smpsSetTempoDiv	$EC
	dc.b	nEb1, $18
	smpsSetvoice	$02
	smpsSetTempoDiv	$07
	dc.b	nG1, $0A
	smpsSetTempoDiv	$0D
	smpsSetvoice	$0A
	smpsSetTempoDiv	$EC
	dc.b	nBb0, $0C, nCs1, nEb1, nRst, $02
	smpsSetvoice	$02
	smpsSetTempoDiv	$07
	dc.b	nG1, $18
	smpsSetTempoDiv	$0D
	smpsLoop	0, 7, CCZPast_Sub21
	smpsSetvoice	$0A
	smpsSetTempoDiv	$EC
	dc.b	nEb1, $18
	smpsSetvoice	$02
	smpsSetTempoDiv	$07
	dc.b	nG1, $18, nG1, $0C, $06, $0C, $06, $06, $06
	smpsSetTempoDiv	$0D
	smpsAlterNote	$F9
	
CCZPast_Sub22:
	smpsSetvoice	$0A
	smpsAlterVol	$0A
	smpsPan	$F9
	smpsSetTempoDiv	$EF
	dc.b	nC1, $0C
	smpsPan	$0F
	smpsAlterVol	$CE
	dc.b	nC1, $0C
	smpsPan	$F6
	smpsAlterVol	$EC
	dc.b	nC1, $0C
	smpsSetTempoDiv	$11
	smpsPan	$FF
	smpsAlterVol	$3C
	smpsLoop	0, 2, CCZPast_Sub22
	dc.b	nRst, $18
	smpsLoop	1, 8, CCZPast_Sub22
	smpsAlterNote	$07
	smpsJumpF6	CCZPast_Sub23
	
CCZPast_PCM6:
	smpsSetvoice	$0C
	smpsAlterVol	$90
	dc.b	nC1, $0C, $0C, $0C, $0C
	smpsAlterVol	$20
	dc.b	nC1, $0C, $0C, $0C, $0C
	smpsAlterVol	$20
	dc.b	nC1, $0C, $0C, $0C, $0C
	smpsAlterVol	$30
	dc.b	nC1, $0C, $0C, $0C, $0C
	
CCZPast_Sub29:
	smpsAlterNote	$05
	
CCZPast_Sub25:
	smpsSetvoice	$09
	dc.b	nRst, $18
	smpsCall	CCZPast_Sub24
	smpsLoop	0, 3, CCZPast_Sub25
	dc.b	nRst, $60
	smpsLoop	1, 4, CCZPast_Sub25
	
CCZPast_Sub26:
	smpsSetTempoDiv	$05
	smpsAlterVol	$1E
	smpsSetvoice	$08
	dc.b	nC1, $18
	smpsSetvoice	$10
	smpsCall	CCZPast_Sub24
	dc.b	nRst, $18
	smpsSetvoice	$10
	smpsCall	CCZPast_Sub24
	smpsSetvoice	$08
	dc.b	nC1, $18
	smpsSetTempoDiv	$FD
	smpsSetvoice	$10
	smpsCall	CCZPast_Sub24
	dc.b	nRst, $18
	smpsSetvoice	$10
	smpsCall	CCZPast_Sub24
	smpsSetTempoDiv	$FE
	smpsAlterVol	$E2
	smpsLoop	0, 2, CCZPast_Sub26
	
CCZPast_Sub27:
	smpsSetTempoDiv	$07
	smpsAlterVol	$1E
	smpsPan	$7F
	dc.b	nC1, $18
	smpsPan	$F7
	dc.b	nB0
	smpsPan	$7F
	dc.b	nBb0, $12
	smpsPan	$F7
	dc.b	nAb0
	smpsPan	$7F
	dc.b	nG0, $0C
	smpsPan	$FF
	smpsSetTempoDiv	$F9
	smpsAlterVol	$E2
	smpsLoop	0, 8, CCZPast_Sub27
	smpsAlterNote	$FB
	
CCZPast_Sub28:
	smpsSetvoice	$09
	dc.b	nRst, $18
	smpsCall	CCZPast_Sub24
	smpsLoop	0, 8, CCZPast_Sub28
	smpsJumpF6	CCZPast_Sub29
	dc.b	$00
	
CCZPast_Sub24:
	smpsPan	$FF
	dc.b	nC1, $0C
	smpsAlterVol	$CE
	smpsPan	$7F
	dc.b	nC1
	smpsAlterVol	$CE
	smpsPan	$F7
	dc.b	nC1
	smpsAlterVol	$64
	smpsPan	$FF
	dc.b	nC1
	smpsAlterVol	$CE
	smpsPan	$7F
	dc.b	nC1
	smpsAlterVol	$CE
	smpsPan	$F7
	dc.b	nC1
	smpsAlterVol	$64
	smpsReturn
	
CCZPast_PCM1:
	smpsStop
	dc.b	$00
