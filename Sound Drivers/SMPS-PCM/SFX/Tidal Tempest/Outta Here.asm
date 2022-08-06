OuttaHere_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, OuttaHere_PCM1, $05, $FF
	
OuttaHere_PCM1:
	smpsSetvoice	$10
	smpsAlterNote	$20
	dc.b	nFs1, $2D
	smpsStop
