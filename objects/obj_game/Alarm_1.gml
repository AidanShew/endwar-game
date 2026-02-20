RoundActive=true;
if (obj_PlayerStats.ArenaRound%whirlpool_round==0) {
	create_whirlpool(whirlpool_amount);
}
else {
	create_soldier(KillsNeeded);
}
