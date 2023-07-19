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
	
	
	
	if(pc.stage > 30 && irandom_range(0, 500) == 1){
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
	}
	
	
	
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