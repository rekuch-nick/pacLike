if(ww.state != "play"){ return; }


if(stun > 0){
	stun --;
	image_alpha = random_range(.1, .6);
	if(stun < 30){
		image_alpha = random_range(.6, 1);
	}
	
	if(stun < 1){ image_alpha = 1; }
	return;
}


if(hurtTime > 0){ 
	hurtTime --; 
	if(hurtTime <= 0){ stun += 30; return; }
}



//dir = 0;


if(dir == 0){
	//choose goal
	if( (pc.powerTime > 0 ) && isEnemy){
		do{ xTar = xSpot + choose(-1, 0, 1); yTar = ySpot + choose(-1, 0, 1); }
		until ( (xTar != xSpot || yTar != ySpot) && (xTar != xLast || yTar != yLast) );
	} else if( (ww.scatterTime > 0 && isEnemy) || hurtTime > 0){
		xTar = xHome;
		yTar = yHome;
	} else {
		if(irandom_range(0, 99) < speedChangeChance){
			moveSpeed = irandom_range(speedMin, speedMax);
		}
		
		if(moveType == "something cool"){
			xTar = pc.xSpot; yTar = pc.ySpot;
		} else if(moveType == "right exit"){
			xTar = 23; yTar = ww.wrapRow;
			if(xTar == xSpot && yTar == ySpot){
				instance_destroy();
			}
		} else if(moveType == "random"){
			xTar = pc.xSpot + 12;
			yTar = pc.ySpot + 12;
			if(xTar > 23){ xTar -= 23; }
			if(yTar > 23){ yTar -= 23; }
		} else if (moveType == "ambush2"){
			var red = instance_find(objMobDragonRed, 0);
			if(red == noone){
				moveType = "hunt";
			} else {
				var aa = red.x; var bb = red.y;
				var angle = arctan2(pc.y - bb, pc.x - aa);
				aa += cos(angle) * (point_distance(pc.x, pc.y, red.x, red.y) * 2);
				bb += sin(angle) * (point_distance(pc.x, pc.y, red.x, red.y) * 2);
				aa = clamp(aa, 0, ww.roomWidth); 
				bb = clamp(bb, 0, room_height);
				xTar = floor(aa / 32);
				yTar = floor(bb / 32);
			}
		} else if(moveType == "ambush"){
			xTar = pc.xSpot; yTar = pc.ySpot;
			if(pc.dir == 1){ yTar -= 4; }
			if(pc.dir == 2){ xTar += 4; }
			if(pc.dir == 3){ yTar += 4; }
			if(pc.dir == 4){ xTar -= 4; }
		} else {
			xTar = pc.xSpot; yTar = pc.ySpot;
		}
	}
	
	//find viable tiles	
	//score by dis to goal
	for(var i=1; i<5; i++){
		if(i == 1){ var a = xSpot; var b = ySpot - 1; }
		if(i == 2){ var a = xSpot + 1; var b = ySpot; }
		if(i == 3){ var a = xSpot; var b = ySpot + 1; }
		if(i == 4){ var a = xSpot - 1; var b = ySpot; }
		
		if(!inBounds(a, b)){ tileScore[i] = 1000000; continue; }
		if(ww.bmap[a, b] != noone && (ww.bmap[a, b] != imgBlockBlack || !ignoreBlackBlocks) ){ tileScore[i] = 1000000; continue; }
		if(a == xLast && b == yLast){ tileScore[i] = 1000000; continue; }
		
		var disToGoal = point_distance(a * 32 + 16, b * 32 + 16, xTar * 32 + 16, yTar * 32 + 16);
		tileScore[i] = disToGoal;
	}
	
	//find best score tile & set dir to be dir of that tile
	var best = 1000000;
	for(var i=1; i<5; i++){
		if(tileScore[i] < best){
			best = tileScore[i];
			dir = i;
		}
	}
	
	if(dir == 0){ xLast = xSpot; yLast = ySpot; }
		
}




xs = 0;
ys = 0;
ms = moveSpeed;
if(isEnemy && (pc.powerTime > 0 )){ ms = clamp(ms - 1, 1, ms); }
if(hurtTime > 0){ ms = 8; }
if(effect != noone && effCD < 30){ ms = 0; }

if(dir == 2){ xs = ms; snapToY(); if(image_xscale < 0){ image_xscale *= -1; } }
if(dir == 4){ xs = -ms; snapToY(); if(image_xscale > 0){ image_xscale *= -1; } }
if(dir == 1){ ys = -ms; snapToX(); }
if(dir == 3){ ys = ms; snapToX(); }





d = xs < 0 ? -1 : 1;
for(var i=0; i<abs(xs); i++){
	x += d;
	
	//if(x >= ww.roomWidth){ x -= ww.roomWidth; }
	//if(x < 0){ x += ww.roomWidth; }
	
	if(pointInBlock(x, y, ignoreBlackBlocks)){
		x -= d;
		break;
	}
}


d = ys < 0 ? -1 : 1;
for(var i=0; i<abs(ys); i++){
	y += d;
	if(pointInBlock(x, y, ignoreBlackBlocks)){
		y -= d;
		break;
	}
}










var xx = floor(x / 32); 
var yy = floor(y / 32);
if(xSpot != xx || ySpot != yy){
	xLast = xSpot; yLast = ySpot;
	xSpot = xx; ySpot = yy;
	dir = 0;
}




if(effect != noone){
	if(choose(true, false) || effCD < 40){
		effCD --;
		if(effCD < 1){
			effCD = effCDMax;
			mobUseEffect(effect);
		}
	}
	
}



