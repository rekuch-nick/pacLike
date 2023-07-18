function pointInBlock(a, b){
	var aa = floor(a / 32);
	var bb = floor(b / 32);
	
	if(!inBounds(aa, bb)){ return true; }
	
	if(ww.bmap[aa, bb] != noone){ return true; }
	
	return false;
}