effect_create_above(ef_firework, x, y, 1, c_yellow); //Creates effect
with (obj_game) {
	KillsThisRound+=1;
	obj_game.points+=50;
	obj_wp.killed_followers+=1;
}
instance_destroy();