; ====================================================================================================
; _smps2asm_inc.asm created by Flamewing, based on S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; SCD mod by Dobby233Liu
; ====================================================================================================

; PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.
psgdelta	EQU 12
; ---------------------------------------------------------------------------------------------
; Standard Octave Pitch Equates
smpsPitch10lo	EQU $88
smpsPitch09lo	EQU $94
smpsPitch08lo	EQU $A0
smpsPitch07lo	EQU $AC
smpsPitch06lo	EQU $B8
smpsPitch05lo	EQU $C4
smpsPitch04lo	EQU $D0
smpsPitch03lo	EQU $DC
smpsPitch02lo	EQU $E8
smpsPitch01lo	EQU $F4
smpsPitch00		EQU $00
smpsPitch01hi	EQU $0C
smpsPitch02hi	EQU $18
smpsPitch03hi	EQU $24
smpsPitch04hi	EQU $30
smpsPitch05hi	EQU $3C
smpsPitch06hi	EQU $48
smpsPitch07hi	EQU $54
smpsPitch08hi	EQU $60
smpsPitch09hi	EQU $6C
smpsPitch10hi	EQU $78
; ---------------------------------------------------------------------------------------------
; Note Equates
nRst		EQU	$80
nC0			EQU	$81
nCs0		EQU	$82
nD0			EQU	$83
nEb0		EQU	$84
nE0			EQU	$85
nF0			EQU	$86
nFs0		EQU	$87
nG0			EQU	$88
nAb0		EQU	$89
nA0			EQU	$8A
nBb0		EQU	$8B
nB0			EQU	$8C
nC1			EQU	$8D
nCs1		EQU	$8E
nD1			EQU	$8F
nEb1		EQU	$90
nE1			EQU	$91
nF1			EQU	$92
nFs1		EQU	$93
nG1			EQU	$94
nAb1		EQU	$95
nA1			EQU	$96
nBb1		EQU	$97
nB1			EQU	$98
nC2			EQU	$99
nCs2		EQU	$9A
nD2			EQU	$9B
nEb2		EQU	$9C
nE2			EQU	$9D
nF2			EQU	$9E
nFs2		EQU	$9F
nG2			EQU	$A0
nAb2		EQU	$A1
nA2			EQU	$A2
nBb2		EQU	$A3
nB2			EQU	$A4
nC3			EQU	$A5
nCs3		EQU	$A6
nD3			EQU	$A7
nEb3		EQU	$A8
nE3			EQU	$A9
nF3			EQU	$AA
nFs3		EQU	$AB
nG3			EQU	$AC
nAb3		EQU	$AD
nA3			EQU	$AE
nBb3		EQU	$AF
nB3			EQU	$B0
nC4			EQU	$B1
nCs4		EQU	$B2
nD4			EQU	$B3
nEb4		EQU	$B4
nE4			EQU	$B5
nF4			EQU	$B6
nFs4		EQU	$B7
nG4			EQU	$B8
nAb4		EQU	$B9
nA4			EQU	$BA
nBb4		EQU	$BB
nB4			EQU	$BC
nC5			EQU	$BD
nCs5		EQU	$BE
nD5			EQU	$BF
nEb5		EQU	$C0
nE5			EQU	$C1
nF5			EQU	$C2
nFs5		EQU	$C3
nG5			EQU	$C4
nAb5		EQU	$C5
nA5			EQU	$C6
nBb5		EQU	$C7
nB5			EQU	$C8
nC6			EQU	$C9
nCs6		EQU	$CA
nD6			EQU	$CB
nEb6		EQU	$CC
nE6			EQU	$CD
nF6			EQU	$CE
nFs6		EQU	$CF
nG6			EQU	$D0
nAb6		EQU	$D1
nA6			EQU	$D2
nBb6		EQU	$D3
nB6			EQU	$D4
nC7			EQU	$D5
nCs7		EQU	$D6
nD7			EQU	$D7
nEb7		EQU	$D8
nE7			EQU	$D9
nF7			EQU	$DA
nFs7		EQU	$DB
nG7			EQU	$DC
nAb7		EQU	$DD
nA7			EQU	$DE
nBb7		EQU	$DF
; SMPS2ASM uses nMaxPSG for songs from S1/S2 drivers.
; nMaxPSG1 and nMaxPSG2 are used only for songs from S3/S&K/S3D drivers.
; The use of psgdelta is intended to undo the effects of PSGPitchConvert
; and ensure that the ending note is indeed the maximum PSG frequency.
nMaxPSG				EQU nBb6-psgdelta
nMaxPSG1			EQU nBb6
nMaxPSG2			EQU nB6
; ---------------------------------------------------------------------------------------------
; PSG Flutter Equates
fTone_00	EQU	$00
fTone_01	EQU	$01
fTone_02	EQU	$02
fTone_03	EQU	$03
fTone_04	EQU	$04
fTone_05	EQU	$05
fTone_06	EQU	$06
fTone_07	EQU	$07
fTone_08	EQU	$08
fTone_09	EQU	$09
fTone_0A	EQU	$07
fTone_0B	EQU	$05
fTone_0C	EQU	$00
fTone_0D	EQU	$00
sTone_01	EQU	$02
sTone_02	EQU	$02
sTone_03	EQU	$05
sTone_04	EQU	$03
sTone_05	EQU	$01
sTone_06	EQU	$03
sTone_07	EQU	$00	; SFX envelope, probably unused in S3K
sTone_08	EQU	$09
sTone_09	EQU	$05
sTone_0A	EQU	$07
sTone_0B	EQU	$00	; For FM volume envelopes
sTone_0C	EQU	$09
sTone_0D	EQU	$00	; This time it matches 100%
sTone_0E	EQU	$02	; Duplicate of 01
sTone_0F	EQU	$02	; Duplicate of 02
; ---------------------------------------------------------------------------------------------
; Channel IDs for SFX
cPCM1				EQU $00
cPCM2				EQU $02
cPCM3				EQU $04
cPCM4				EQU $06
cPCM5				EQU $08
cPCM6				EQU $0A
cPCM7				EQU $0C
cPCM8				EQU $0E
; ---------------------------------------------------------------------------------------------
; Header Macros
smpsHeaderStartSong macro
songStart set *
	endm

; Header macros for music (not for SFX)

; Header - Set up Channel count
smpsHeaderChan macro val
	if songStart<>*
		fatal "Missing smpsHeaderStartSong or smpsHeaderStartSongConvert"
	endif
	dc.b	val
	endm

; Header - Set up Tempo
smpsHeaderTempo macro div,mod
	dc.b	div
tempoDivider set div
	dc.b    mod
	endm

; Header - Set up FM Channel
smpsHeaderPCM macro loc,pitch,vol
	dc.w	loc-songStart
	dc.b	pitch,vol
	endm

; Header macros for SFX (not for music)

; Header - Set up Channel Usage
smpsHeaderChanSFX macro chan
	dc.b	chan
	endm

; Header - Set up Tempo
smpsHeaderTempoSFX macro div
	dc.b	div
	endm

; Header - Set up PCM Channel
smpsHeaderSFXChannel macro chanid,loc,pitch,vol
	dc.b	$80,chanid
	dc.w	loc-songStart
	dc.b	pitch
	dc.b	vol
	endm
; ---------------------------------------------------------------------------------------------
; Co-ord Flag Macros and Equates

; E0xx - Panning
smpsPan macro direction
panNone set $00
panRight set $40
panLeft set $80
panCentre set $C0
panCenter set $C0 ; silly Americans :U
	dc.b $E0,direction
	endm

; E1xx - Set channel frequency displacement / detune to xx
smpsAlterNote macro val
	dc.b	$E1,val
	endm
smpsDetune macro val
	smpsAlterNote val
	endm

; E2xx - Set communication flag (useless)
smpsCommFlag macro val
	dc.b	$E2,val
	endm

; E3xx - Set CDDA loop flag (useless)
smpsCommFlag macro val
	dc.b	$E3,val
	endm

; E6xx - Alter Volume by xx
smpsAlterVol macro val
	dc.b	$E6,val
	endm

; E7xx - Set Legato to xx
smpsSetLegato macro val
	dc.b	$E7,val
	endm

; E8xx - Set staccato to xx
smpsSetStaccato macro val
	dc.b	$E8,val
	endm

; EAxx - Set music tempo modifier to xx
smpsSetTempoMod macro val
	dc.b	$EA,val
	endm

; EBxx - Play a sound
smpsPlaySound macro val
	dc.b	$EB,val
	endm

; EFxx - Set music instrument to xx
smpsSetvoice macro val
	dc.b	$EF,val
	endm

; F0-F2 - Stop chaneel
smpsStop macro val
	dc.b	$F2
	endm

; F4/F6xxxx - Jump to offset
smpsJump macro val
	dc.b	$F4
	dc.w	loc-*-1
	endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
	dc.b	$F7
	dc.b	index,loops
	dc.w	loc-*-1
	endm

; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
	dc.b	$F8
	dc.w	loc-*-1
	endm

; Return (used after smpsCall)
smpsReturn macro val
	dc.b	$F9
	endm

; FAxx - Set track tick multiplier to xx
smpsChanTempoDiv macro val
	dc.b	$FA,val
	endm

; FBxx - Set music tick multiplier to xx
smpsSetTempoDiv macro val
	dc.b	$EB,val
	endm
; ---------------------------------------------------------------------------------------------
; S1/S2 only coordination flag
; Sets D1L to maximum volume (minimum attenuation) and RR to maximum for operators 3 and 4 of FM1
smpsWeirdD1LRR macro
	dc.b	$F9
	endm
; ---------------------------------------------------------------------------------------------
; Macros for FM instruments
; Voices - Feedback
smpsVcFeedback macro val
vcFeedback set val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
vcAlgorithm set val
	endm

smpsVcUnusedBits macro val
vcUnusedBits set val
	endm

; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
vcDT1 set op1
vcDT2 set op2
vcDT3 set op3
vcDT4 set op4
	endm

; Voices - Coarse-Frequency
smpsVcCoarseFreq macro op1,op2,op3,op4
vcCF1 set op1
vcCF2 set op2
vcCF3 set op3
vcCF4 set op4
	endm

; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
vcRS1 set op1
vcRS2 set op2
vcRS3 set op3
vcRS4 set op4
	endm

; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
vcAR1 set op1
vcAR2 set op2
vcAR3 set op3
vcAR4 set op4
	endm

; Voices - Amplitude Modulation
smpsVcAmpMod macro op1,op2,op3,op4
vcAM1 set op1
vcAM2 set op2
vcAM3 set op3
vcAM4 set op4
	endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
vcD1R1 set op1
vcD1R2 set op2
vcD1R3 set op3
vcD1R4 set op4
	endm

; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
vcD2R1 set op1
vcD2R2 set op2
vcD2R3 set op3
vcD2R4 set op4
	endm

; Voices - Decay Level
smpsVcDecayLevel macro op1,op2,op3,op4
vcDL1 set op1
vcDL2 set op2
vcDL3 set op3
vcDL4 set op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
vcRR1 set op1
vcRR2 set op2
vcRR3 set op3
vcRR4 set op4
	endm

; Voices - Total Level
smpsVcTotalLevel macro op1,op2,op3,op4
vcTL1 set op1
vcTL2 set op2
vcTL3 set op3
vcTL4 set op4
	dc.b	(vcUnusedBits<<6)+(vcFeedback<<3)+vcAlgorithm
	dc.b	(vcDT4<<4)+vcCF4, (vcDT3<<4)+vcCF3, (vcDT2<<4)+vcCF2, (vcDT1<<4)+vcCF1
	dc.b	(vcRS4<<6)+vcAR4, (vcRS3<<6)+vcAR3, (vcRS2<<6)+vcAR2, (vcRS1<<6)+vcAR1
	dc.b	(vcAM4<<5)+vcD1R4, (vcAM3<<5)+vcD1R3, (vcAM2<<5)+vcD1R2, (vcAM1<<5)+vcD1R1
	dc.b	vcD2R4, vcD2R3, vcD2R2, vcD2R1
	dc.b	(vcDL4<<4)+vcRR4, (vcDL3<<4)+vcRR3, (vcDL2<<4)+vcRR2, (vcDL1<<4)+vcRR1
	;dc.b	vcTL4|vcTLMask4, vcTL3|vcTLMask3, vcTL2|vcTLMask2, vcTL1|vcTLMask1
	if vcAlgorithm=7
		dc.b	op4|$80
	else
		dc.b	op4
	endif

	if vcAlgorithm>=4
		dc.b    op3|$80
	else
		dc.b    op3
	endif

	if vcAlgorithm>=5
		dc.b    op2|$80
	else
		dc.b    op2
	endif
		dc.b    op1|$80
	endm