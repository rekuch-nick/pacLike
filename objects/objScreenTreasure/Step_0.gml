


if(pc.pressedUp){ 
	cur --; 
	if(cur < 0){ cur = curMax; }
}

if(pc.pressedDown){ 
	cur ++; 
	if(cur > curMax){ cur = 0; }
}




if(pc.pressedEnter){
	if(perk[cur] == ww.ppDotsLess){ pc.ignoreDots += 4; }
	if(perk[cur] == ww.ppDotScore){ pc.scorefromDots += 1; }
	if(perk[cur] == ww.ppPickupRange){ pc.magRange += 1; }
	if(perk[cur] == ww.pp1Up){ pc.hp += 1; }
	if(perk[cur] == ww.ppPowerAmount){ pc.powerSpawn += 1; }
	if(perk[cur] == ww.ppPowerEffect){ pc.powerEffectTime += 30 * 4; }
	if(perk[cur] == ww.ppPowerTime){ pc.powerTimeMax += 60; }
	if(perk[cur] == ww.ppSpeedUp){ pc.moveSpeed += 1; }
	
	with(objMob){ if(isEnemy){ stun = clamp(stun, 30, 30 * 10); } }
	
	ww.state = "play";
	instance_destroy();
}