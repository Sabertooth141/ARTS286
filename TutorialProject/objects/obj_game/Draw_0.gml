draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if !(global.gameover) {
	draw_set_font(fnt_small);
	draw_text(room_width / 2, 700, string("SCORE: ") + string(global.player_score));
}

if (global.gameover && global.win) {
	draw_set_font(fnt_large);
	draw_text(room_width / 2, room_height / 2, string("YOU WIN"));
	draw_text(room_width / 2, room_height / 3, string("PRESS R TO RESTART"));
} else if (global.gameover) {
	draw_set_font(fnt_large);
	draw_text(room_width / 2, room_height / 2, string("GAME OVER"));
	draw_text(room_width / 2, room_height / 3, string("PRESS R TO RESTART"));
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);