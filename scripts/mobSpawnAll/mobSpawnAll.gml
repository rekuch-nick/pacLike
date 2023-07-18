function mobSpawnAll(){
	
	ww.scatterTime = 0; 
	ww.scatterTimeMax = 4 * 30;
	
	ww.scatterCDMax = 10 * 30
	ww.scatterCD = ww.scatterCDMax;
	
	var a = 22; var b = 1;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonRed);
	var a = 1; var b = 1;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonGreen);
	var a = 1; var b = 22;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonYellow);
	
}