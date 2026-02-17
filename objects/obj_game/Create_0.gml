SetRatio();
EnemiesAlive=0;
points=0;
playerHealth=50;
playerLives=3;
whirlpool_amount=1;
whirlpool_round=5;
	
if (room==rm_horde) {
	obj_PlayerStats.ArenaRound=1;
	KillsThisRound=0;
	KillsNeeded=5;
	instance_create_layer(512, 512, "Instances", obj_player);
	CreateEnemy(KillsNeeded);
	RoundActive=true;
}
if (room==rm_survival) {
	instance_create_layer(512, 512, "Instances", obj_player);
	CreateRock(12);
}