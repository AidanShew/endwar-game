RoundActive=true;
//show_debug_message(string("Alarm 1 called"));
if (obj_PlayerStats.ArenaRound%whirlpool_round==0) {
	CreateWhirlpool(whirlpool_amount);
	//show_debug_message(string("Created whirlpool"));
}
else {
	CreateEnemy(KillsNeeded);
}
