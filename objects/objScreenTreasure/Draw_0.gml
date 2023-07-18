draw_self();



draw_text_transformed(20, 100 + (cur * 100), ">>>", 2, 2, 0);



for(var i=0; i<=curMax; i++){
	draw_text(200, 100 + (i * 100), perk[i]);
}