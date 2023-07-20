function mobSpawnAll(){
	
	ww.fmaps = [];
	
	ww.scatterTime = 0; 
	ww.scatterTimeMax = 4 * 30;
	ww.scatterCDMax = 10 * 30
	ww.scatterCD = ww.scatterCDMax;
	
	pc.useWarp = 0;
	pc.useWarpMax = 2;
	//for(var a=0; a<24; a++){ for(var b=0; b<24; b++){ if(bmap[a, b] == imgLock){ bmap[a, b] = noone; } }}
	
	ww.princessTimeMax = 30 * 30 + ( (pc.stage - 1) + 20);
	ww.princessTime = ww.princessTimeMax;
	
	var a = 22; var b = 1;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonRed);
	var a = 1; var b = 1;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonGreen);
	
	if(pc.stage > 3){
		var a = 1; var b = 22;
		instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonYellow);
	}
	
	if(pc.stage > 5){
		var a = 22; var b = 22;
		instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonBlue);
	}
}