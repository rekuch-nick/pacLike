if(ww.state == "pause"){ return; }

if(hurtTime > 0){
	draw_sprite_stretched_ext(imgMobEyes, 0, x-32, y-32, 64, 64, c_white, random_range(.2, .8));
	
} else {
	
	if(effect != noone && effCD < 30 && choose(true, false)){
		draw_sprite_ext(imgDragonWhite, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	} else if (limitedDots) {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, .5);
	} else {
		draw_self();
	}
	
	if( (pc.powerTime > 0  ) && isEnemy){
		draw_text(x, y - 40, "!");
	}
}

