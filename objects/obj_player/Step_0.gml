fireCounter+=1;

if keyboard_check(vk_up)||keyboard_check(ord("W")) { //checks if up arrow is pressed.
	motion_add(image_angle, 0.1); //image_angle is the direction of the ship.
}
if keyboard_check(vk_right)||keyboard_check(ord("D")) {
	image_angle-=4;
}
if keyboard_check(vk_left)||keyboard_check(ord("A")) {
	image_angle+=4;
}

if keyboard_check(vk_escape) {
	room_goto(rm_pause);
}

if mouse_check_button_pressed(mb_left)||keyboard_check(vk_space) {
	if (fireCounter>=15) {
	instance_create_layer(x,y,"Instances",obj_bullet)
	fireCounter=0;
	}
}

move_wrap(true, true, 0);