function worldGen(){
	pc.stage ++;
	random_set_seed(seed);
	for(var i=0; i<pc.stage * 20; i++){
		var n = irandom_range(1, 100);
	}
	
	with(objMob){ instance_destroy(); }
	
	for(var a=0; a<24; a++){
		for(var b=0; b<24; b++){
			pmap[a, b] = noone;
			bmap[a, b] = imgBlock;
		}
	}
	
	worldGenMazeFrom(1, 1);
	repeat(20){ worldGenRemoveRandomBlock(); }
	
	
	for(var i=0; i<choose(1, 2); i++){
		wrapRow = irandom_range(2, 5);
		wrapRow *= 3;
		wrapRow ++;
		bmap[0, wrapRow] = noone; bmap[23, wrapRow] = noone;
	}
	
	
	
	pills = 0;
	for(var a = 1; a<23; a++){ for(var b = 1; b<23; b++){
		if(bmap[a, b] == noone){
			pmap[a, b] = imgPill;
			pills ++;
		}
	}}
	pillsMax = pills;
	
	bmap[pc.xSpot, pc.ySpot] = noone;
	worldGenBuildImageMap();
	
	
	
	/*
	for(var a=0; a<24; a++){
		bmap[a, 0] = imgBlock;
		bmap[a, 1] = imgBlock;
		bmap[a, 23] = imgBlock;
	}
	
	warpRows = [10, 15];
	for(var b=0; b<24; b++){
		if(!arrayContains(warpRows, b)){
			bmap[0, b] = imgBlock;
			bmap[23, b] = imgBlock;
		}
	}
	*/
	
	var a = 22; var b = 1;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonRed);
	var a = 1; var b = 1;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonGreen);
	var a = 1; var b = 22;
	instance_create_depth(a * 32, b * 32, depth - 1, objMobDragonYellow);
	
	
	randomize();
}