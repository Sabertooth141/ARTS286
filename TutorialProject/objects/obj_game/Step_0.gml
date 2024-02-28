if (global.gameover && !trombones_played && global.win) {
	audio_stop_sound(snd_mus_bgm);
	audio_play_sound(snd_win, 1, false);
	trombones_played = true;
} else if (global.gameover && !trombones_played) {
	audio_stop_sound(snd_mus_bgm);
	audio_play_sound(snd_lose, 1, false);
	trombones_played = true;	
}

if (keyboard_check(ord("R"))) {
	audio_stop_all();
	room_restart();
	global.gameover = false;
}

if (global.player_score <= 0) {
	global.gameover = true;
}

if (global.player_score >= 1000) {
	global.win = true;
	global.gameover = true;
}