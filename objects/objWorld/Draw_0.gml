
if(state == "play"){
	for(var a=0; a<24; a++){ for(var b=0; b<24; b++){
		if(bmap[a, b] != noone){
			draw_sprite_stretched(bmap[a, b], imap[a, b], a * 32, b * 32, 32, 32);			
		}
		if(pmap[a, b] != noone){
			draw_set_alpha(pAlpha);
			draw_sprite_stretched(pmap[a, b], 0, a * 32, b * 32, 32, 32);
			draw_set_alpha(1);
		}
		//draw_rectangle_color(a * 32, b * 32, a * 32 + 31, b * 32 + 31, c_dkgray, c_dkgray, c_dkgray, c_dkgray, true);
	}}
}