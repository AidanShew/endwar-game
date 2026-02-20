fireCounter+=1;
if (instance_exists(mother)) {
	follower_movement();
}
else {
	effect_create_above(ef_firework, x, y, 1, c_yellow); //Creates effect
	instance_destroy(obj_follower);
}