if(ww.state == "pause"){
	draw_set_halign(fa_center);
	draw_text(room_height / 2, ww.roomWidth / 2, "PAUSE");
	draw_set_halign(fa_left);
	return;
}

if(ww.state == "ded" && hp < 1){
	draw_text(irandom_range(0, ww.roomWidth - 50), irandom_range(0, room_height - 50), "GAME OVER");
}

draw_self();
