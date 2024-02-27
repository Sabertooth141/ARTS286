if (global.player_score <= 0) {
	global.gameover = true;
}

if (global.gameover && !trombones_played) {
	audio_play_sound(snd_sad_trombone, 1, false);
	trombones_played = true;
}

if (keyboard_check(ord("R"))) {
	game_restart();
	global.gameover = false;
}