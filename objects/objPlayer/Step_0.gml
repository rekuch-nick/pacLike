playerInput();

if(ww.state == "ded"){
	image_alpha = irandom_range(0, 1);
	image_xscale = abs(image_xscale) + .03;
	image_yscale += .03;
	image_angle += irandom_range(-30, 30);
	with(objMob){
		x += irandom_range(-2, 2);
		y += irandom_range(-2, 2);
	}
	
	if(image_yscale >= 5.5 && hp > 0){
		hp --;
		image_alpha = 1; image_angle = 0; image_xscale = 4; image_yscale = 4;
		ww.state = "reset";
		dir = 0; x = 340; y = 528; xSpot = floor(x / 32); ySpot = floor(y / 32);
		return;
	} else if(image_yscale >= 12){
		if(sp > spMax){ spMax = sp; }
		image_alpha = 1; image_angle = 0; image_xscale = 4; image_yscale = 4;
		dir = 0; x = 340; y = 528; xSpot = floor(x / 32); ySpot = floor(y / 32);
		ww.state = "title";
		instance_create_depth(0, 0, -1000, objScreenTitle);
		
	}
}



if(ww.state != "play"){ return; }




if(xIn < 0 && canMoveInDir(4) ){ dir = 4; if(image_xscale > 0){ image_xscale *= -1; } snapToY(); }
if(xIn > 0 && canMoveInDir(2) ){ dir = 2; if(image_xscale < 0){ image_xscale *= -1; } snapToY(); }
if(yIn < 0 && canMoveInDir(1) ){ dir = 1; snapToX(); }
if(yIn > 0 && canMoveInDir(3) ){ dir = 3; snapToX(); }
if(pressingSpace){ dir = 0; }

xs = 0;
ys = 0;
ms = moveSpeed;

if(dir == 2){ xs = ms; }
if(dir == 4){ xs = -ms; }
if(dir == 1){ ys = -ms; }
if(dir == 3){ ys = ms; }


d = xs < 0 ? -1 : 1;
for(var i=0; i<abs(xs); i++){
	x += d;
	
	if(x >= ww.roomWidth){ x -= ww.roomWidth; }
	if(x < 0){ x += ww.roomWidth; }
	
	if(pointInBlock(x, y)){
		x -= d;
		break;
	}
}


d = ys < 0 ? -1 : 1;
for(var i=0; i<abs(ys); i++){
	y += d;
	if(pointInBlock(x, y)){
		y -= d;
		break;
	}
}






//if(y > room_height){ y -= room_height; }
//if(y < 0){ y += room_height; }


xSpot = floor(x / 32); ySpot = floor(y / 32);

//var a = xSpot; var b = ySpot;
for(var a=xSpot-magRange; a<=xSpot+magRange; a++){ for(var b=ySpot-magRange; b<=ySpot+magRange; b++){
	if(abs(a - xSpot) + abs(b - ySpot) > magRange){ continue; }
	if(!inBounds(a, b)){ continue; }
	if(ww.pmap[a, b] == imgPill){
		ww.pmap[a, b] = noone;
		ww.pills --;
		sp += scorefromDots;
		
		if(ww.pills == floor(ww.pillsMax * .75)){ with(objMob){ moveSpeed += rage01; } }
		if(ww.pills == floor(ww.pillsMax *  .5)){ with(objMob){ moveSpeed += rage02; } }
		if(ww.pills == floor(ww.pillsMax * .25)){ with(objMob){ moveSpeed += rage03; } }
		
		if(ww.pills == floor(ww.pillsMax *  .6)){ 
			var a = 0; var b = ww.wrapRow;
			instance_create_depth(a * 32 + 16, b * 32 + 16, ww.depth - 1, objTreasure);
		}
		
		if(ww.pills - ignoreDots < 1){ ww.state = "gen"; }
	}
	
}}









with(objMob){
	if(xSpot == pc.xSpot && ySpot == pc.ySpot){
	
		if(isEnemy && stun < 1 && hurtTime < 1){
			ww.state = "ded"; ////
		}
	
		if(isTreasure){
			instance_create_depth(0, 0, -999, objScreenTreasure);
			instance_destroy();
		}
	}
}








if(dir == 0){ image_index = 0; }




if(keyboard_check_pressed(vk_backspace)){ ww.state = "gen"; }
if(keyboard_check_pressed(vk_f1)){ 
	var a = 0; var b = ww.wrapRow;
	instance_create_depth(a * 32 + 16, b * 32 + 16, ww.depth - 1, objTreasure);
}