//Alarm 3 respawns player only, not enemy.
//Used for non-enemy game mode.
if (room==rm_survival) {
	with (obj_rock) {
		instance_destroy();
	}
	CreateRock(6);
}
instance_create_layer(512,512, "Instances", obj_player);
playerHealth=3;