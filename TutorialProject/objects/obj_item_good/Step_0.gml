vspeed = global.spd_drop;
image_angle += 1;

if (global.gameover) {
	image_alpha -= .05;
	vspeed -= .05;
	if (image_alpha < 0) {
		instance_destroy();
	}
}