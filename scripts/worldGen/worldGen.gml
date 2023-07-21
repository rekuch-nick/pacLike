function worldGen(){
	
	if(pc.stage == 0){
		var spellTime = [15, 20, 25, 30];
		var spellTimeShuff = array_shuffle(spellTime);
		llSpellBlue = spellTimeShuff[0];
		llSpellRed = spellTimeShuff[1];
		llSpellGreen = spellTimeShuff[2];
		llSpellYellow = spellTimeShuff[3];
	}
	
	pc.dir = 0;
	pc.stage ++;
	random_set_seed(seed);
	for(var i=0; i<pc.stage * 2; i++){ var n = irandom_range(1, 100); }
	
	trapTime = pc.stage > llTrapTime ? 1.5 : 1;
	
	with(objMob){ instance_destroy(); }
	gotChest = false;
	
	pc.picks = pc.picksPerStage;
	
	for(var a=0; a<24; a++){ for(var b=0; b<24; b++){
			pmap[a, b] = noone;
			bmap[a, b] = imgBlock;
	}}
	
	worldGenMazeFrom(1, 1);
	
	
	repeat(20){ worldGenRemoveRandomBlock(); }
	
	if(irandom_range(1, 100) == 1){
		repeat(70){ worldGenRemoveRandomBlock(); }
	}
	
	
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
	
	upgradePills();
	
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
	
	mobSpawnAll();
	
	
	
	
	randomize();
	
	
	
	
	//help text
	worldGenHelpText();
	
	
	
	
	
	
	
	
	
	
	
	
	
}