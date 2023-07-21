function playerDig(aa, bb){
	
	if(picks < 1){ return; }
	
	var a = floor(x / 32);
	var b = floor(y / 32);
	
	if(!inBounds(a, b, 1)){ return; }

	ww.bmap[a, b] = noone;
	ww.bmap[a + aa, b + bb] = noone;
	
	
	picks --;

}