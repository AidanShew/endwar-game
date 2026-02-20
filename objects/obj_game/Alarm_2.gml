//Alarm 2 respawns the player without reseting the room.
//Used whenever player is killed, one life is taken away.
if (instance_exists(obj_soldier)) {instance_destroy(obj_soldier)}
else if (instance_exists(obj_wp)) {instance_destroy(obj_wp); if(instance_exists(obj_follower)) {instance_destroy(obj_follower)}}

EnemiesAlive=0; //Resets enemies alive so enemies alive so enemies to kill match.
instance_create_layer(512,512,"Instances",obj_player);
playerHealth=50;
if (obj_PlayerStats.ArenaRound%5==0) {
	create_whirlpool(whirlpool_amount);
}
else {
	create_soldier(KillsNeeded);
}