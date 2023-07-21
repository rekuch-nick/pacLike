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
	
	if(pc.stage >= llNegPill1 ){ n = 1; }
	if(pc.stage >= llNegPill2 ){ n = 2; }
	if(pc.stage >= llNegPill3 ){ n = 3; }
	if(pc.stage >= llNegPill4 ){ n = 5; }
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