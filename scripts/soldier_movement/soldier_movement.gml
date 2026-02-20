function soldier_movement(){
	//Checks if player is near
	var stop_advance_player=200;
	var stop_advance_enemy=50;
	var decelerate=1;
	var accelerate=1;
	var max_speed=5;
	var screen_margin=17;
	var screen_width=display_get_gui_width();
	var screen_height=display_get_gui_height();
	with (obj_soldier) {
		if (x>=clamp(x,screen_margin,screen_width-screen_margin)&&y>=clamp(y,55,screen_height-screen_margin)) {
			if (other.id!=id) {
				if (distance_to_object(obj_soldier)<=stop_advance_enemy) {
					speed=max(speed-decelerate, 0);
					
				}
			}
		}
	}
	
	if (instance_exists(obj_player)) {
		image_angle=point_direction(x, y, obj_player.x, obj_player.y);
	
		if (distance_to_object(obj_player)<=stop_advance_player) {
			speed=max(speed-decelerate, 0);
		
		}
		else {
			move_towards_point(obj_player.x-stop_advance_player, obj_player.y-stop_advance_player, speed);
			speed=min(speed+accelerate, max_speed);
		}

	//Fire rate manager
		if (fireCounter>=soldier_fire_limit) {
			instance_create_layer(x,y,"Instances", obj_evilbullet).direction=image_angle;
			fireCounter=0;
		}
	}
}