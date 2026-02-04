function CheckForPlayer(){
//Checks if player is near
if (instance_exists(obj_player)) {
	var _dis=distance_to_object(obj_player);
	move_towards_point(obj_player.x, obj_player.y, 3.5);
	obj_enemy.image_angle=point_direction(x, y, obj_player.x, obj_player.y);
	if (fireCounter>=15) {
		instance_create_layer(x,y,"Instances", obj_evilbullet)
		fireCounter=0;
	}
}
}