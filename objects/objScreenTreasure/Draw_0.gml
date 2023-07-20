draw_self();



draw_text_transformed(20, 200 + (cur * 100), ">>>", 2, 2, 0);



for(var i=0; i<=curMax; i++){
	draw_text(200, 200 + (i * 100), perk[i]);
}