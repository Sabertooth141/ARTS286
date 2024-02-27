if !(global.gameover) {
	var _item_bad_x = floor(random_range(20, room_width - 20));
	instance_create_layer(_item_bad_x, 0, "dropItems", obj_item_bad);
	alarm_set(1, random_range(20, 40));
} else {
	instance_destroy();
}