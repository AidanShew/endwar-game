if (wp_hp<=0) {
	effect_create_above(ef_firework, x, y, 1, c_purple); //Creates effect
	with (obj_game) {
		KillsThisRound+=1;
		EnemiesAlive-=1;
		obj_game.points+=350;
	}
	instance_destroy();
}
else {
	instance_destroy(obj_bullet);
	sprite_index=spr_whirlpool_hit;
	draw=1;
	alarm[0]=40;
	wp_hp-=1;
	alarm[1]=40;
}