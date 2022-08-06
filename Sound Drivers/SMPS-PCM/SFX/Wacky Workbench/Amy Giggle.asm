AmyGiggle_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, AmyGiggle_PCM1, $05, $FF
	
AmyGiggle_PCM1:
	smpsStop
