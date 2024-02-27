global.spd_drop += .1;
global.player_score -= 100;

with(other) {
	instance_destroy();
}

audio_play_sound(snd_bad, 0, 0);