draw_self();
draw_set_halign(fa_center);
draw_text_transformed(room_width / 2, 100, "Pac Like", 2, 2, 0);

draw_text(room_width / 2, 200, "Seed: " + string(ww.seed));


draw_text(room_width / 2, 550, "Press ENTER to Play");

draw_text(room_width / 2, 700, "Hi Score");
draw_text(room_width / 2, 740, string(pc.spMax));
draw_set_halign(fa_left);