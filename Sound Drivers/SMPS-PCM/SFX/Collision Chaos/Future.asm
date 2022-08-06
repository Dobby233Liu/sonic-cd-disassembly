Future_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Future_PCM1, $00, $FF
	
Future_PCM1:
	smpsSetvoice	$13
	dc.b	nC2, $36
	smpsStop
