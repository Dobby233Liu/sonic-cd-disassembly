Unknown_Header:
	smpsHeaderStartSFX
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	
	smpsHeaderSFXChannel	cPCM4, Unknown_PCM1, $00, $FF
	
Unknown_PCM1:
	dc.b	$FE, ; WARNING: unknown command
	dc.b	$00, $04, nC0
	smpsStop
