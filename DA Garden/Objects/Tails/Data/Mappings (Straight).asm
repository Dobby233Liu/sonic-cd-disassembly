.Map:
	dc.w	3
	dc.w	1, .Frame0-.Map
	dc.w	1, .Frame1-.Map
	dc.w	1, .Frame2-.Map
	
.Frame0:
	dc.w	3-1
	dc.w	$B00, 1, $14, 4, $10, $10
	dc.w	$700, $D, -4, $14, $10, $10
	dc.w	$100, $3D, -$14, $1C, 6, 6
	
.Frame1:
	dc.w	3-1
	dc.w	$B00, 1, $14, 4, $10, $10
	dc.w	$700, $D, -4, $14, $10, $10
	dc.w	$100, $3F, -$14, $1C, 6, 6
	
.Frame2:
	dc.w	3-1
	dc.w	$B00, 1, $14, 4, $10, $10
	dc.w	$700, $D, -4, $14, $10, $10
	dc.w	$100, $103D, -$14, $1C, 6, 6