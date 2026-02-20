fireCounter+=1;
/*
 ---Old Movement---
if keyboard_check(vk_up)||keyboard_check(ord("W")) { //checks if up arrow is pressed.
	motion_add(image_angle, 0.3) //image_angle is the direction of the ship.
}
if keyboard_check(vk_right)||keyboard_check(ord("D")) {
	image_angle-=4;
}
if keyboard_check(vk_left)||keyboard_check(ord("A")) {
	image_angle+=4;
}

if keyboard_check(vk_down)||keyboard_check(ord("S")) {
	speed=0;
}
*/

if keyboard_check(ord("W")) { //checks if up arrow is pressed.
	y-=player_speed; //image_angle is the direction of the ship.
}
if keyboard_check(ord("D")) {
	x+=player_speed;
}
if keyboard_check(ord("A")) {
	x-=player_speed;
}

if keyboard_check(ord("S")) {
	y+=player_speed;
}

if (keyboard_check(vk_right)||keyboard_check(ord("L"))) {
	if (fireCounter>=fire_limit) {
		instance_create_layer(x,y,"Instances",obj_bullet)
		obj_bullet.direction=-22.5+90;
		fireCounter=0;
	}
}

else if(keyboard_check(vk_left)||keyboard_check(ord("J"))) {
	if (fireCounter>=fire_limit) {
		instance_create_layer(x,y,"Instances",obj_bullet)
		obj_bullet.direction=22.5+90;
		fireCounter=0;
	}
	
}

else if(keyboard_check(vk_up)||keyboard_check(vk_space))||keyboard_check(ord("I")) {
	if (fireCounter>=fire_limit) {
		instance_create_layer(x,y,"Instances",obj_bullet)
		obj_bullet.direction=90;
		fireCounter=0;
	}
}

if mouse_check_button_pressed(mb_left)||keyboard_check(vk_space) {
	if (fireCounter>=fire_limit) {
	instance_create_layer(x,y,"Instances",obj_bullet)
	fireCounter=0;
	}
}

if (obj_game.playerLives<=0) {
	obj_game.alarm[0]=120;
}

obj_player.x=clamp(x,17,display_get_gui_width()-17);
obj_player.y=clamp(y,55,display_get_gui_height()-17);