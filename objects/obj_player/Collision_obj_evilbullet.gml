obj_game.playerHealth-=1;
instance_destroy(other); //IMPORTANT!! destroys the bullet so it doesn't collide again accidentally.
if obj_game.playerHealth<=0 {
	obj_game.playerLives-=1;
	effect_create_above(ef_firework, x, y, 1, c_white); //Creates effect
	instance_destroy();
	obj_game.alarm[2]=120; //This sets an "alarm" after 120 frames to respawn the player.
}