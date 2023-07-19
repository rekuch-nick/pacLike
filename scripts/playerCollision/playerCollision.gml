function playerCollision(){
	
	
	with(objMob){
		if(xSpot == pc.xSpot && ySpot == pc.ySpot){
	
			if(isEnemy && stun < 1 && hurtTime < 1){
				if(pc.powerTime > 0){
					hurtTime = pc.powerEffectTime;
				} else {
					ww.state = "ded"; ////
				}
			}
	
			if(isTreasure){
				instance_create_depth(0, 0, -999, objScreenTreasure);
				instance_destroy();
			}
		}
	}
	
	for(var i=0; i<array_length(ww.fmaps); i++){
		var m = ww.fmaps[i];
		if(pc.xSpot >= m.a && pc.xSpot < m.a + m.w){
			if(pc.ySpot >= m.b && pc.ySpot < m.b + m.h){
				//touching
				if(m.img == imgFire){
					if(pc.powerTime < 1){
						ww.state = "ded";
					}
				}
				if(m.img == imgWeb){
					if(pc.powerTime < 1){
						pc.slow = true;
					}
				}
			}
		}
	}

}