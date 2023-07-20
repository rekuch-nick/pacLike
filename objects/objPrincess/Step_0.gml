if(ww.state != "play"){ return; }


y += dir * 8;

if(y <= 0){ dir *= -1; }



with(objMob){ if(isEnemy && hurtTime < 1){
	if(abs(y - other.y) < 16){
		hurtTime = floor(pc.powerEffectTime / 2);
		if(other.drawTo > x){ other.drawTo = x; }
	}
}}

if(dir > 0 && y > room_height + 16){
	if(charges > 0){
		charges --;
		dir *= -1;
	} else {
		instance_destroy();
	}
}
