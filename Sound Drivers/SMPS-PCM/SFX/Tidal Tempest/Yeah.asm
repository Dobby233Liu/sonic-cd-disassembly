Yeah_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Yeah_PCM1, $05, $FF
	
Yeah_PCM1:
	smpsSetvoice	$12
	smpsAlterNote	$15
	dc.b	nFs1, $20
	smpsStop
