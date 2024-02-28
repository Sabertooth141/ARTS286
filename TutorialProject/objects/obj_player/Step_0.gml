vspeed += gravity;

if (keyboard_check(vk_left)) {
	hspeed = -5;
} else if (keyboard_check(vk_right)) {
	hspeed = 5;
} else {
	hspeed = 0;
}

if (keyboard_check_pressed(vk_space) && is_on_ground) {
	vspeed = -35;
}

if (hspeed == 0) {
	sprite_index = spr_player_idle;
	is_walking_pt2 = false;
	image_speed = 1;
} else if (hspeed != 0) {
	if (!is_walking_pt2) {
		sprite_index = spr_player_walk_pt_1;
		image_speed = 1.5;
	}
	image_xscale = hspeed > 0 ? .5 : -.5;
	
}


if (x + hspeed >= (room_width - 100) || x + hspeed <= 100) {
	hspeed = 0;
}

if (y >= room_height - sprite_height/2.5 && vspeed > 0) {
    y = room_height - sprite_height/2.5;
	vspeed = 0;
	is_on_ground = true;
} else if (y >= room_height - sprite_height/2.5){
	is_on_ground = false;
}
//show_debug_message("X: " + string(x) + " Y: " + string(y) + "Vspeed: " + string(vspeed) +  " HSpeed: " + string(hspeed) + " Sprite Width: " + string(sprite_width));
//show_debug_message(is_on_ground);