function advance_round(){
	//playerHealth=50;
	obj_PlayerStats.ArenaRound+=1;
	KillsThisRound=0;
	if (obj_PlayerStats.ArenaRound%whirlpool_round==0) {
		KillsNeeded=whirlpool_amount;
	}
	else {
		KillsNeeded=5+(obj_PlayerStats.ArenaRound*2);
	}
	obj_game.alarm[1]=120;

	show_debug_message("Advancing Round: " + string(obj_PlayerStats.ArenaRound));
}