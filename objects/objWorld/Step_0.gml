if(state == "gen"){
	worldGen();
	state = "play";
}

if(state == "reset"){
	with(objMob){ instance_destroy(); }
	mobSpawnAll();
	state = "play";
}




pAlpha += pAlphaDir * .02;
if(pAlpha < .4 && pAlphaDir < 0){ pAlphaDir *= -1; }
if(pAlpha >= .8 && pAlphaDir > 0){ pAlphaDir *= -1; }




if(state == "play"){
	
	if(pc.powerTime < 1){
		
		if(scatterTime > 0){
			scatterTime --;
		} else {
			scatterCD --;
			if(scatterCD < 1){
				scatterCD = scatterCDMax;
				scatterTime = scatterTimeMax;
				scatterCDMax += 90;
				with(objMob){
					xLast = xSpot;
					yLast = ySpot;
				}
			}
		}
		
		
		
		if(choose(true, false) && choose(true, true, false) || pc.stage < 15){
			princessTime -= pc.princessChance;
			if(princessTime < 1){
				princessTime = princessTimeMax;
				instance_create_depth(ww.roomWidth + 32, room_height + 32, pc.depth - 1, objPrincess);
			}
		}
		
		
		
		if(pc.useWarp >= pc.useWarpMax && pc.x > 32 && pc.x < ww.roomWidth - 32){
			if(ww.bmap[0, pc.ySpot] == noone){
				ww.bmap[0, pc.ySpot] = imgBlockBlack;
				ww.bmap[23, pc.ySpot] = imgBlockBlack;
			}
			
			pc.useWarp = ceil(pc.useWarp / 2);
		}
	}
	
	
	
	/*if(pc.stage > 30 && irandom_range(0, 500) == 1){
		var aa = irandom_range(0, 20);
		var bb = irandom_range(0, 20);
		var rng = 5;
		fmaps[array_length(fmaps)] = {
			img: imgTarget,
			a: aa - floor(rng / 2),
			b: bb - floor(rng / 2),
			w: rng,
			h: rng,
			cd: 150,
		}
	}*/
	
	
	
	for(var i=0; i<array_length(fmaps); i++){
		fmaps[i].cd --;
		
		var m = fmaps[i];
		if(m.cd < 1 && m.img == imgTarget){
			fmaps[i].img = imgFire;
			fmaps[i].cd = 120 + 10 * pc.stage;
		}
	}
	fmapsRebuild();
	
}