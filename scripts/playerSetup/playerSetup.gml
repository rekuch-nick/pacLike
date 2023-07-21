function playerSetup(){
	
	pc.seeRest = false;
	pc.useWarp = 0;
	
	pc.moveSpeed = 6;
	
	pc.ignoreDots = 0;
	pc.magRange = 0;
	pc.scorefromDots = 10;

	pc.hp = 2;
	pc.sp = -10;

	pc.stage = 0;
	
	pc.powerTime = 0;
	pc.powerTimeMax = 30 * 8;
	pc.powerSpawn = 2;
	pc.powerEffectTime = 30 * 4;
	
	pc.lifeGain = 1;
	
	pc.princessChance = 1;
	pc.mimicReduction = 0;
	
	pc.extraWarps = 0;
	
	pc.slow = false;
	
	ww.pp1Up = "+1 Life";
	
	pc.picksPerStage = 0;
	pc.picks = 0;
}