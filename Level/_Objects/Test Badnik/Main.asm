; -------------------------------------------------------------------------
; Sonic CD Disassembly
; By Ralakimus 2021
; -------------------------------------------------------------------------
; Test badnik object
; -------------------------------------------------------------------------

oUnusedBadX	EQU	oVar30			; X position copy

; -------------------------------------------------------------------------

ObjTestBadnik:
	moveq	#0,d0				; Run object routine
	move.b	oRoutine(a0),d0
	move.w	.Index(pc,d0.w),d0
	jmp	.Index(pc,d0.w)

; -------------------------------------------------------------------------

.Index:
	dc.w	ObjTestBadnik_Init-.Index	; Initialization
	dc.w	ObjTestBadnik_Main-.Index	; Main

; -------------------------------------------------------------------------
; Unused badnik initialization routine
; -------------------------------------------------------------------------

ObjTestBadnik_Init:
	bra.w	DeleteObject

; -------------------------------------------------------------------------
; Main unused badnik routine
; -------------------------------------------------------------------------

ObjTestBadnik_Main:
	bra.w	DeleteObject

; -------------------------------------------------------------------------
