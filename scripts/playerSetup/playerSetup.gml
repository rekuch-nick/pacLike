function playerSetup(){
	
	pc.moveSpeed = 6;
	
	pc.ignoreDots = 0;
	pc.magRange = 0;
	pc.scorefromDots = 10;

	pc.hp = 2;
	pc.sp = -10;

	pc.stage = 0;
	
	pc.powerTime = 0;
	pc.powerTimeMax = 30 * 8;
	pc.powerSpawn = 1;
	pc.powerEffectTime = 30 * 4;
	
	
	
	pc.slow = false;
}