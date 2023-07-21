function choosePerk(ignore){
	
	var t = noone;
	while(t == noone){
		var r = irandom_range(1, 13);
		
		
		if(r == 1){ t = ww.ppDotsLess; }
		if(r == 2){ t = ww.ppPowerEffect; }
		if(r == 3 && pc.moveSpeed < 9){ t = ww.ppSpeedUp; }
		if(r == 4 && pc.princessChance < 3 ){ t = ww.ppPrincessChance; }
		if(r == 5 && pc.stage >= 10 ){ t = ww.ppExtraWarps; }
		if(r == 6 && pc.magRange < 6 ){ t = ww.ppPickupRange; }
		if(r == 7 && pc.powerSpawn < 7 ){ t = ww.ppPowerAmount; }
		if(r == 8){ t = ww.ppDotScore; }
		if(r == 9){ t = ww.ppPowerTime; }
		if(r == 10 && pc.stage >= ww.llMimic2 ){ t = ww.ppMimicReduction; }
		if(r == 11 && pc.lifeGain < 3 ){ t = ww.ppLifeGain; }
		if(r == 12 && !pc.seeRest && pc.stage > 3 ){ t = ww.ppRestTimer; }
		if(r == 13 && pc.picksPerStage < 3 ){ t = ww.ppPicks; }
		
		
		if(pc.moveSpeed < 7 && pc.stage > 7 && choose(true, false, false)){ t = ww.ppSpeedUp; }
		
		
		if(t == ignore){ t = noone; }
	}
	
	return t;
}