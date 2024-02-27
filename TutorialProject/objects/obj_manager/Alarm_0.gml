if !(global.gameover) {
	var _item_x = floor(random_range(20, room_width - 20));
	with (instance_create_layer(_item_x, 0, "dropItems", obj_item_good)) {
		image_index = random(2);
	}
	
	alarm_set(0, random_range(30, 120));
	
} else {
	instance_destroy();
}