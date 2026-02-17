//Alarm 2 respawns the player without reseting the room.
//Used whenever player is killed, one life is taken away.
instance_destroy(obj_soldier);
EnemiesAlive=0; //Resets enemies alive so enemies alive so enemies to kill match.
instance_create_layer(512,512, "Instances", obj_player);
obj_player.player_speed=15;
playerHealth=50;
CreateEnemy(KillsNeeded);