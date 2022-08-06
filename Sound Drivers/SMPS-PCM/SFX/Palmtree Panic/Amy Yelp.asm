AmyYelp_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, AmyYelp_PCM1, $05, $FF
	
AmyYelp_PCM1:
	smpsSetvoice	$0C
	dc.b	nBb1, $09
	smpsStop
	dc.b	$00
