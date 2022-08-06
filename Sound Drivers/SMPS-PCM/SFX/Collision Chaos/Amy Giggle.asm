AmyGiggle_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, AmyGiggle_PCM1, $00, $FF
	
AmyGiggle_PCM1:
	smpsSetvoice	$17
	dc.b	nB1, $18
	smpsStop
