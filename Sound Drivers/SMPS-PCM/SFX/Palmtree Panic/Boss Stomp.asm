BossStomp_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, BossStomp_PCM1, $00, $FF
	
BossStomp_PCM1:
	smpsSetvoice	$0A
	dc.b	nD1, $04, nCs2, $1E
	smpsStop
	dc.b	$00
