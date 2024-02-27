if !(global.gameover) {
	draw_set_font(fnt_small);
	draw_text(room_width / 2, 700, string("SCORE: ") + string(global.player_score));
}

if (global.gameover) {
	draw_set_font(fnt_large);
	draw_text(room_width / 2, room_height / 2, string("GAME OVER"));
	draw_text(room_width / 2, room_height / 3, string("PRESS R TO RESTART"));
}