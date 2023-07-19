function upgradePills(){
	
	
	var n = pc.powerSpawn;
	var tries = 0;
	while(n > 0 && tries < 30000){
		tries ++;
		
		var a = irandom_range(1, 22);
		var b = irandom_range(1, 22);
		
		if(tries < 10){
			a = choose(1, 22);
			b = choose(1, 22);
		}
		
		if(ww.pmap[a, b] == imgPill){
			ww.pmap[a, b] = imgPowerPill;
			ww.pills --; ww.pillsMax --;
			
			n --;
		}
	}
	
	if(pc.stage >= 9){ n = 1; }
	if(pc.stage >= 19){ n = 2; }
	if(pc.stage >= 29){ n = 3; }
	while(n > 0 && tries < 30000){
		tries ++;
		
		var a = irandom_range(1, 22);
		var b = irandom_range(1, 22);
		
		
		if(ww.pmap[a, b] == imgPill){
			ww.pmap[a, b] = imgPillNeg;
			ww.pills --; ww.pillsMax --;
			
			n --;
		}
	}

}