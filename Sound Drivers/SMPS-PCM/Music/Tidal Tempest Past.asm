TTZPast_Header:
	smpsHeaderStartSong
	smpsHeaderChan	$08
	smpsHeaderTempo	$01, $04
	
	smpsHeaderPCM	TTZPast_PCM1, $00, $6F
	smpsHeaderPCM	TTZPast_PCM2, $00, $9F
	smpsHeaderPCM	TTZPast_PCM3, $00, $6F
	smpsHeaderPCM	TTZPast_PCM4, $00, $6F
	smpsHeaderPCM	TTZPast_PCM5, $00, $6F
	smpsHeaderPCM	TTZPast_PCM6, $00, $9F
	smpsHeaderPCM	TTZPast_PCM7, $00, $8F
	smpsHeaderPCM	TTZPast_PCM8, $00, $7F
	
TTZPast_PCM2:
	smpsSetTempoDiv	$01
	
TTZPast_Sub1:
	smpsSetvoice	$00
	dc.b	nA1, $0C, nE2, nD2, nE2, nG2, nD2, nE2, nC2, nA1
	dc.b	$0C, nE2, nD2, nE2, nG2, nFs2, nG2, nA2
	smpsSetTempoDiv	$FE
	dc.b	nA1, $0C, nE2, nD2, nE2, nG2, nD2, nE2, nC2, nA1
	dc.b	$0C, nE2, nD2, nE2, nG2, nFs2, nG2, nA2
	smpsSetTempoDiv	$02
	smpsLoop	0, 2, TTZPast_Sub1
	
TTZPast_Sub2:
	dc.b	nC2, $0C
	smpsAlterVol	$EC
	dc.b	nEb2
	smpsAlterVol	$EC
	dc.b	nD2
	smpsAlterVol	$28
	dc.b	nEb2
	smpsAlterVol	$E2
	dc.b	nF2
	smpsAlterVol	$1E
	dc.b	nEb2, nD2, nEb2, nC2, $0C
	smpsAlterVol	$F1
	dc.b	nEb2
	smpsAlterVol	$F1
	dc.b	nD2
	smpsAlterVol	$F1
	dc.b	nEb2
	smpsAlterVol	$F1
	dc.b	nF2
	smpsAlterVol	$F1
	dc.b	nEb2
	smpsAlterVol	$F1
	dc.b	nD2
	smpsAlterVol	$F1
	dc.b	nEb2
	smpsAlterVol	$69
	smpsLoop	0, 2, TTZPast_Sub2
	smpsSetTempoDiv	$03
	smpsLoop	1, 2, TTZPast_Sub2
	smpsSetTempoDiv	$FA
	smpsLoop	2, 2, TTZPast_Sub2
	smpsAlterVol	$D8
	
TTZPast_Sub3:
	dc.b	nF1, $03, nA1, nC2, nE2
	smpsAlterVol	$CE
	smpsPan	$F7
	dc.b	nF1, nA1, nC2, nE2
	smpsAlterVol	$32
	smpsPan	$CD
	dc.b	nD1, nF1, nA1, nC2
	smpsAlterVol	$CE
	smpsPan	$7F
	dc.b	nD1, nF1, nA1, nC2
	smpsAlterVol	$32
	smpsPan	$CD
	dc.b	nE1, nG1, nB1, nD2
	smpsAlterVol	$CE
	smpsPan	$7F
	smpsPan	$F7
	dc.b	nE1, nG1, nB1, nD2
	smpsAlterVol	$32
	smpsPan	$CD
	dc.b	nBb0, nD1, nF1, nA1
	smpsAlterVol	$CE
	smpsPan	$7F
	dc.b	nBb0, nD1, nF1, nA1
	smpsAlterVol	$32
	smpsPan	$CD
	dc.b	nF1, nA1, nC2, nE2
	smpsAlterVol	$CE
	smpsPan	$F7
	dc.b	nF1, nA1, nC2, nE2
	smpsAlterVol	$32
	smpsPan	$CD
	dc.b	nD1, nF1, nA1, nC2
	smpsAlterVol	$CE
	smpsPan	$7F
	dc.b	nD1, nF1, nA1, nC2
	smpsAlterVol	$32
	smpsPan	$CD
	dc.b	nE1, nG1, nB1, nD2
	smpsAlterVol	$CE
	smpsPan	$F7
	dc.b	nE1, nG1, nB1, nD2
	smpsAlterVol	$32
	smpsPan	$CD
	dc.b	nC1, nE1, nG1, nB1
	smpsAlterVol	$CE
	smpsPan	$7F
	dc.b	nC1, nE1, nG1, nB1
	smpsAlterVol	$32
	smpsPan	$CD
	smpsLoop	0, 4, TTZPast_Sub3
	smpsAlterVol	$28
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsJumpF6	TTZPast_Sub1
	smpsStop
	
TTZPast_PCM3:
	smpsSetTempoDiv	$05
	
TTZPast_Sub7:
	smpsAlterNote	$0E
	smpsSetvoice	$01
	smpsPan	$FF
	dc.b	nB1, $0C
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nB1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nB1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$37
	smpsPan	$FF
	dc.b	nA1
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$1E
	smpsPan	$FF
	dc.b	nB1
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$EC
	smpsPan	$F7
	dc.b	nB1
	smpsAlterVol	$32
	smpsPan	$FF
	dc.b	nC2
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nC2
	smpsAlterVol	$EC
	smpsPan	$F7
	dc.b	nC2
	smpsAlterVol	$32
	smpsPan	$FF
	dc.b	nD2
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nD2
	smpsAlterVol	$1E
	smpsPan	$FF
	dc.b	nA1
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nA1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nA1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nA1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$FE
	smpsPan	$F7
	dc.b	nA1
	smpsAlterVol	$FD
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$FD
	smpsPan	$F7
	dc.b	nA1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nA1
	smpsAlterVol	$FA
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$F9
	smpsPan	$F7
	dc.b	nA1
	smpsAlterVol	$50
	smpsPan	$FF
	dc.b	nAb1, $04
	smpsAlterVol	$08
	dc.b	nA1
	smpsAlterVol	$08
	dc.b	nBb1
	smpsPan	$FF
	dc.b	nB1, $0C
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nB1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nB1
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$37
	smpsPan	$FF
	dc.b	nA1
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nA1
	smpsAlterVol	$1E
	smpsPan	$FF
	dc.b	nB1
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nB1
	smpsAlterVol	$EC
	smpsPan	$F7
	dc.b	nB1
	smpsAlterVol	$32
	smpsPan	$FF
	dc.b	nC2
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nC2
	smpsAlterVol	$EC
	smpsPan	$F7
	dc.b	nC2
	smpsAlterVol	$32
	smpsPan	$FF
	dc.b	nD2
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nD2
	smpsAlterVol	$1E
	smpsPan	$FF
	dc.b	nE2
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nE2
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nE2
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nE2
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$FE
	smpsPan	$F7
	dc.b	nE2
	smpsAlterVol	$FD
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$FD
	smpsPan	$F7
	dc.b	nE2
	smpsAlterVol	$FB
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$FB
	smpsPan	$F7
	dc.b	nE2
	smpsAlterVol	$FA
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$F9
	smpsPan	$F7
	dc.b	nE2
	smpsAlterVol	$F9
	smpsPan	$7F
	dc.b	nE2
	smpsAlterVol	$67
	smpsAlterNote	$08
	smpsSetvoice	$0B
	smpsAlterVol	$B0
	
TTZPast_Sub4:
	dc.b	nD2, $06, nEb2
	smpsAlterVol	$0A
	smpsLoop	0, 8, TTZPast_Sub4
	
TTZPast_Sub5:
	dc.b	nD2, $06, nEb2
	smpsAlterVol	$F6
	smpsLoop	0, 8, TTZPast_Sub5
	smpsLoop	1, 2, TTZPast_Sub4
	smpsSetTempoDiv	$03
	smpsLoop	2, 2, TTZPast_Sub4
	smpsSetTempoDiv	$FA
	smpsLoop	3, 2, TTZPast_Sub4
	smpsPan	$FF
	smpsAlterVol	$50
	smpsAlterNote	$F8
	smpsSetTempoDiv	$FC
	smpsAlterNote	$0E
	
TTZPast_Sub6:
	dc.b	nRst, $0C, nE2, nD2, nC2, nB1, nA1, nBb1, nD2, nRst
	dc.b	$0C, nE2, nD2, nC2, nD2, nG2, nE2
	smpsAlterVol	$C4
	dc.b	nE2
	smpsAlterVol	$3C
	dc.b	nRst, $0C, nE2, nD2, nC2, nB1, nA1, nBb1, nD2, nRst
	dc.b	$0C, nE2, nD2, nC2, nD2, nG2, nA2
	smpsAlterVol	$C4
	dc.b	nA2
	smpsAlterVol	$3C
	smpsLoop	0, 2, TTZPast_Sub6
	smpsAlterNote	$F2
	smpsSetTempoDiv	$04
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsJumpF6	TTZPast_Sub7
	smpsStop
	
TTZPast_PCM4:
	smpsSetTempoDiv	$05
	
TTZPast_Sub8:
	smpsSetvoice	$02
	dc.b	nRst, $18, nC2, nRst, $0C, nC2, $24, nRst, $18, nC2
	dc.b	nRst, $0C, nC2, $24
	smpsSetTempoDiv	$FE
	dc.b	nRst, $18, nC2, nRst, $0C, nC2, $24, nRst, $18, nC2
	dc.b	nRst, $0C, nC2, $24
	smpsSetTempoDiv	$02
	smpsLoop	0, 2, TTZPast_Sub8
	
TTZPast_Sub9:
	dc.b	nRst, $18, nAb1, nRst, $0C, nAb1, $24
	smpsLoop	0, 4, TTZPast_Sub9
	smpsSetTempoDiv	$03
	
TTZPast_Sub10:
	dc.b	nRst, $18, nAb1, nRst, $0C, nAb1, $24
	smpsLoop	0, 4, TTZPast_Sub10
	smpsSetTempoDiv	$FD
	smpsLoop	1, 2, TTZPast_Sub9
	smpsSetvoice	$0B
	smpsAlterNote	$0F
	smpsSetTempoDiv	$FC
	smpsPan	$3F
	smpsAlterVol	$C4
	dc.b	nRst, $03, nRst, $0C, nE2, nD2, nC2, nB1, nA1, nBb1
	dc.b	nD2, nRst, nE2, nD2, nC2, nD2, nG2, nE2
	smpsAlterVol	$C4
	dc.b	nE2
	smpsAlterVol	$3C
	dc.b	nRst, nE2, nD2, nC2, nB1, nA1, nBb1, nD2, nRst, nE2
	dc.b	nD2, nC2, nD2, nG2, nA2
	smpsAlterVol	$C4
	dc.b	nA2
	smpsAlterVol	$3C
	dc.b	nRst, $0C, nE2, nD2, nC2, nB1, nA1, nBb1, nD2, nRst
	dc.b	nE2, nD2, nC2, nD2, nG2, nE2
	smpsAlterVol	$C4
	dc.b	nE2
	smpsAlterVol	$3C
	dc.b	nRst, nE2, nD2, nC2, nB1, nA1, nBb1, nD2, nRst, nE2
	dc.b	nD2, nC2, nD2, nG2, nA2, $15
	smpsSetTempoDiv	$04
	smpsAlterVol	$3C
	smpsAlterNote	$F1
	smpsPan	$FF
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsJumpF6	TTZPast_Sub8
	smpsStop
	
TTZPast_PCM5:
	smpsSetTempoDiv	$08
	
TTZPast_Sub11:
	smpsSetvoice	$03
	dc.b	nA1, $0C, nRst, nRst, nA1, nRst, nRst, nE1, nG1, nA1
	dc.b	$0C, nRst, nRst, nA1, nRst, nRst, nA1, nAb1, nG1, $0C
	dc.b	nRst, nRst, nG1, nRst, nRst, nD1, nF1, nG1, $0C, nRst
	dc.b	nRst, nG1, nRst, nD1, nG1, nAb1
	smpsLoop	0, 2, TTZPast_Sub11
	
TTZPast_Sub12:
	dc.b	nF1, $0C, nRst, nRst, nF1, nRst, nRst, nF1, nF1, nF1
	dc.b	$0C, nRst, nRst, nF1, nRst, nRst, nF1, nF1, nF1, $0C
	dc.b	nRst, nRst, nF1, nRst, nRst, nF1, nF1, nF1, $0C, nRst
	dc.b	nRst, nF1, nC2, nBb1, nG1, nF1
	smpsSetTempoDiv	$03
	smpsLoop	0, 2, TTZPast_Sub12
	smpsSetTempoDiv	$FA
	smpsLoop	1, 2, TTZPast_Sub12
	dc.b	nF1, $18, nD1, nE1, nBb1, nF1, nD1, nE1, nA1, nF1
	dc.b	$18, nD1, nE1, nBb1, nF1, nD1, nE1, nA1, nF1, $18
	dc.b	nD1, nE1, nBb1, nF1, nD1, nE1, nA1, nF1, $18, nD1
	dc.b	nE1, nBb1, nF1, nD1, nE1, nA1, nRst, $60, nRst, nRst
	dc.b	nRst
	smpsJumpF6	TTZPast_Sub11
	smpsStop
	
TTZPast_PCM6:
	smpsSetTempoDiv	$05
	
TTZPast_Sub13:
	smpsSetvoice	$04
	smpsPan	$8F
	dc.b	nC2, $18
	smpsSetvoice	$05
	smpsPan	$F8
	dc.b	$0C, $18
	smpsSetvoice	$04
	smpsPan	$8F
	dc.b	nC2, $0C
	smpsSetvoice	$05
	smpsPan	$F8
	dc.b	$18
	smpsJumpF6	TTZPast_Sub13
	smpsStop
	
TTZPast_PCM7:
	smpsSetvoice	$06
	dc.b	nC2, $18
	smpsSetvoice	$08
	smpsAlterVol	$14
	dc.b	nBb2, $0C
	smpsAlterVol	$EC
	smpsSetvoice	$06
	dc.b	nC2, $18, $0C
	smpsSetvoice	$08
	smpsAlterVol	$14
	dc.b	nBb2, $0C, nBb2
	smpsAlterVol	$EC
	smpsSetvoice	$06
	dc.b	nC2, $18
	smpsSetvoice	$08
	smpsAlterVol	$14
	dc.b	nBb2, $0C
	smpsAlterVol	$EC
	smpsSetvoice	$06
	dc.b	nC2, $18, $0C
	smpsSetvoice	$07
	smpsAlterVol	$1E
	dc.b	nBb2, $18
	smpsAlterVol	$E2
	smpsJumpF6	TTZPast_PCM7
	smpsStop
	
TTZPast_PCM8:
	smpsPan	$AF
	smpsSetTempoDiv	$06
	
TTZPast_Sub14:
	smpsAlterNote	$08
	smpsSetvoice	$0C
	smpsAlterVol	$EC
	dc.b	nRst, $18, nB1, $0C, nC2, nD2, nC2, nB1
	smpsAlterVol	$D8
	dc.b	nB1
	smpsAlterVol	$28
	dc.b	nRst, $18, nB1, $0C, nC2, nD2, nE2, nB1
	smpsAlterVol	$D8
	dc.b	nB1
	smpsAlterVol	$28
	smpsAlterVol	$14
	smpsSetTempoDiv	$FE
	smpsLoop	0, 2, TTZPast_Sub14
	smpsSetTempoDiv	$04
	smpsLoop	1, 2, TTZPast_Sub14
	smpsSetTempoDiv	$FA
	smpsAlterNote	$F8
	smpsPan	$FF
	smpsSetTempoDiv	$01
	
TTZPast_Sub15:
	smpsSetvoice	$09
	smpsPan	$FF
	dc.b	nC2, $0C
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nC2
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nC2
	smpsAlterVol	$28
	smpsPan	$FF
	dc.b	nD2, $0C
	smpsAlterVol	$E2
	smpsPan	$7F
	dc.b	nD2
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nD2
	smpsAlterVol	$28
	smpsPan	$FF
	dc.b	nEb2
	smpsAlterVol	$E7
	smpsPan	$F7
	dc.b	nEb2
	smpsAlterVol	$19
	smpsPan	$FF
	dc.b	nC2, $0C
	smpsAlterVol	$F1
	smpsPan	$7F
	dc.b	nC2
	smpsAlterVol	$F1
	smpsPan	$F7
	dc.b	nC2
	smpsAlterVol	$F1
	smpsPan	$7F
	dc.b	nC2
	smpsAlterVol	$F1
	smpsPan	$F7
	dc.b	nC2
	smpsAlterVol	$F6
	smpsPan	$7F
	dc.b	nC2
	smpsAlterVol	$F6
	smpsPan	$F7
	dc.b	nC2
	smpsAlterVol	$F6
	smpsPan	$7F
	dc.b	nC2
	smpsAlterVol	$5A
	smpsLoop	0, 2, TTZPast_Sub15
	smpsSetTempoDiv	$03
	smpsLoop	1, 2, TTZPast_Sub15
	smpsSetTempoDiv	$FA
	smpsLoop	2, 2, TTZPast_Sub15
	smpsSetTempoDiv	$FF
	
TTZPast_Sub16:
	smpsSetvoice	$0A
	dc.b	nD2, $0C, nE2
	smpsLoop	0, 32, TTZPast_Sub16
	dc.b	nRst, $60, nRst, nRst, nRst
	smpsJumpF6	TTZPast_PCM8
	smpsStop
	
TTZPast_PCM1:
	smpsStop
