//Alarm 3 respawns player only, not enemy.
//Used for non-enemy game mode.
if (room==rm_survival) {
	with (obj_rock) {
		instance_destroy();
	}
	create_rock(6);
}
alarm[4]=0;
playerHealth=50;