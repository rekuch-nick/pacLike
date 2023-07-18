


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
	
	
	
	ww.state = "play";
	instance_destroy();
}