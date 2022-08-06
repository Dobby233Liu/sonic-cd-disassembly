BossStomp_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, BossStomp_PCM1, $05, $FF
	
BossStomp_PCM1:
	smpsStop
