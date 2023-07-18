if(state == "gen"){
	worldGen();
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
			scatterTime = 30 * 4;
			with(objMob){
				xLast = xSpot;
				yLast = ySpot;
			}
		}
	}
	
	
	
}