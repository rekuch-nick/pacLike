function mobUseEffect(e){
	
	if(e == imgFire){
		
		ww.fmaps[array_length(ww.fmaps)] = {
			img: e,
			a: xSpot - 3,
			b: ySpot - 3,
			w: 7,
			h: 7,
			cd: floor(150 * ww.trapTime),
		}
	
	
	}
	
	
	if(e == imgWeb){
		
		ww.fmaps[array_length(ww.fmaps)] = {
			img: e,
			a: xSpot - 5,
			b: ySpot - 5,
			w: 11,
			h: 11,
			cd: floor(220 * ww.trapTime),
		}
	
	
	}
	
	if(e == imgDragonBlue){
		for(var i=1; i<5; i++){
			var a = xSpot; var b = ySpot;
			if(i == 1){ b --; }
			if(i == 2){ a ++; }
			if(i == 3){ b ++; }
			if(i == 4){ a --; }
			if(inBounds(a, b) && ww.bmap[a, b] == noone){
				instance_create_depth(a * 32 + 16, b * 32 + 16, ww.depth - 1, objMobDragonClone);
			}
		}
	}
	
	
	if(e == imgPill){
		var n = clamp(pc.stage / 4, 4, 10);
		var tries = 0;
		while(tries < 100 && n > 0){
			tries ++;
			var a = irandom_range(1, 22);
			var b = irandom_range(1, 22);
			if(ww.bmap[a, b] == noone && ww.pmap[a, b] == noone){
				ww.pills ++;
				ww.pmap[a, b] = imgPillSpawn;
				n --;
			}
		}
	}
	
	
}