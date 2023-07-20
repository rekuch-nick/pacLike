function pointInBlock(a, b, ibb){
	if(is_undefined(ibb)){ ibb = false; }
	
	var aa = floor(a / 32);
	var bb = floor(b / 32);
	
	if(!inBounds(aa, bb)){ return true; }
	
	if(ww.bmap[aa, bb] != noone &&
		(ww.bmap[aa, bb] != imgBlockBlack || !ibb)
		){ return true; }
	
	return false;
}