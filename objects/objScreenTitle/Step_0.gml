


if(pc.pressedUp){ ww.seed ++; }
if(pc.pressedDown){ ww.seed --; }
if(pc.xIn > 0){ ww.seed ++; }
if(pc.xIn < 0){ ww.seed --; }

if(pc.pressedEnter){
	playerSetup();
	
	instance_destroy();
	ww.state = "gen";
}