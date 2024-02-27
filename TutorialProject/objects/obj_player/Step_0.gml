if keyboard_check(vk_left) {
	sprite_index = spr_player_walk;
	x -= move_speed;
	image_speed = 1;
	image_xscale = -.5;
	
}

if keyboard_check(vk_right) {
	sprite_index = spr_player_walk;
	x += move_speed;
	image_speed = 1;
	image_xscale = .5;
	
}

if keyboard_check(vk_nokey) {
	sprite_index = spr_player_idle;
	image_speed = .25;
}

if x >= (room_width - 100) {
	x = xprevious;
}

if x <= 100 {
	x = xprevious;
}

