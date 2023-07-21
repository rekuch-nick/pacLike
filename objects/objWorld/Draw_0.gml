

var pointsString = "" + string(pc.sp);
var n = 9 - string_length(pointsString);
for(var i=0; i<n; i++){
	pointsString = "0" + pointsString;
}
draw_text(770, 4, pointsString);

draw_text(770, 40, "Room " + string(pc.stage) );

draw_sprite_stretched(imgPlayerSmall, 0, 770, 730, 32, 32);
draw_text(806, 736, "x " + string(pc.hp));

if(pc.picks > 0){
	draw_sprite_stretched(imgPlayerPickSmall, 0, 770, 694, 32, 32);
	draw_text(806, 700, "x " + string(pc.picks));
}



draw_sprite_stretched(ww.helpIcon, 0, 824, 250, 64, 64);
draw_text_ext_transformed(780, 330, ww.helpText, 22, 180, 1, 1, 0);




if(state == "play" || state == "pause"){
	
	for(var i=0; i<array_length(fmaps); i++){
		var m = fmaps[i];
		for(var a=m.a; a<m.a+m.w; a++){
			for(var b=m.b; b<m.b+m.h; b++){
				if(!inBounds(a, b)){ continue; }
				draw_sprite_stretched(m.img, irandom_range(0, 3), a*32, b*32, 32, 32);
			}
		}
	}
	
	
	
	
	
	
	for(var a=0; a<24; a++){ for(var b=0; b<24; b++){
		if(bmap[a, b] != noone){
			if (a == 0 && bmap[a, b] == imgBlockBlack ){ draw_sprite_stretched(imgLock, 0, a * 32, b * 32 - 16, 16, 64); }
			else if (a == 23 && bmap[a, b] == imgBlockBlack ){ draw_sprite_stretched(imgLock, 0, a * 32 + 16, b * 32 - 16, 16, 64); }
			else {
				draw_sprite_stretched(bmap[a, b], imap[a, b], a * 32, b * 32, 32, 32);			
			}
		} 
		
		
		
		
		
		if(pmap[a, b] != noone){
			draw_set_alpha(pAlpha);
			draw_sprite_stretched(pmap[a, b], 0, a * 32, b * 32, 32, 32);
			draw_set_alpha(1);
		}
		//draw_rectangle_color(a * 32, b * 32, a * 32 + 31, b * 32 + 31, c_dkgray, c_dkgray, c_dkgray, c_dkgray, true);
	}}
}


if(pc.seeRest){
	draw_text(770, 80, "REST " + string(floor(scatterCD / 10))); 
}
//draw_text(0, 0, "" + string(floor(scatterCD / 10))); 
//draw_text(150, 0, string(floor(scatterTime / 10)));
