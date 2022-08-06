Bumper_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Bumper_PCM1, $05, $FF
	
Bumper_PCM1:
	smpsStop
