Bumper_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Bumper_PCM1, $00, $FF
	
Bumper_PCM1:
	smpsSetvoice	$15
	dc.b	nFs2, $26
	smpsStop
