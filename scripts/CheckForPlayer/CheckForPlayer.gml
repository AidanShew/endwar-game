function CheckForPlayer(){
//Checks if player is near
var stop_advance=130;
var decelerate=0.03;
var accelerate=0.03;
var max_speed=10;

if (instance_exists(obj_player)) {
	image_angle=point_direction(x, y, obj_player.x, obj_player.y);
	
	if (distance_to_object(obj_player)<=stop_advance) {
		speed=max(speed-decelerate, 0);
		
	}
	else {
		move_towards_point(obj_player.x-130, obj_player.y-130, speed);
		speed=min(speed+accelerate, max_speed);
	}

//Fire rate manager
	if (fireCounter>=5) {
		instance_create_layer(x,y,"Instances", obj_evilbullet).direction=image_angle;
		fireCounter=0;
	}
}
}