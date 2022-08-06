Yes_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Yes_PCM1, $05, $FF
	
Yes_PCM1:
	smpsSetvoice	$14
	smpsAlterNote	$10
	dc.b	nCs2, $1B
	smpsStop
