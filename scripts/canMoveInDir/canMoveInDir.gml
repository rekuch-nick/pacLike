function canMoveInDir(dir){
	if(dir == 2 && xSpot < 23 && ww.bmap[xSpot + 1, ySpot] == noone){ return true; }
	if(dir == 4 && xSpot > 0 && ww.bmap[xSpot - 1, ySpot] == noone){ return true; }
	
	if(dir == 1 && ySpot > 0 && ww.bmap[xSpot, ySpot - 1] == noone){ return true; }
	if(dir == 3 && ySpot < 23 && ww.bmap[xSpot, ySpot + 1] == noone){ return true; }
	
	return false;
}