Alright_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Alright_PCM1, $05, $FF
	
Alright_PCM1:
	smpsSetvoice	$12
	smpsAlterNote	$15
	dc.b	nBb1, $2E
	smpsStop
