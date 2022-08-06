Shatter_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Shatter_PCM1, $00, $FF
	
Shatter_PCM1:
	smpsSetvoice	$17
	dc.b	nB1, $29
	smpsStop
