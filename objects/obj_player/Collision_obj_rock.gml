if other.sprite_index == spr_rock_small //This checks if the rock is a big sprite.
{
	obj_game.playerHealth-=1;
	effect_create_above(ef_firework, x, y, 1, c_white);
	instance_destroy(other);
		if obj_game.playerHealth<=0 {
			effect_create_above(ef_firework, x, y, 1, c_white); //Creates effect
			instance_destroy();
			obj_game.alarm[3]=120; //This sets an "alarm" after 120 frames to respawn the player.
		}
}
else {
	obj_game.playerLives-=1;
	effect_create_above(ef_firework, x, y, 1, c_white); //Creates effect
	instance_destroy();
	obj_game.alarm[3]=120; //This sets an "alarm" after 120 frames to respawn the player.
}