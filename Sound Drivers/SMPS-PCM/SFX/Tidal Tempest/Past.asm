Past_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Past_PCM1, $00, $FF
	
Past_PCM1:
	smpsSetvoice	$0E
	dc.b	nC2, $2E
	smpsStop
