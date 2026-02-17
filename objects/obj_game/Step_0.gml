if (room==rm_horde) {
	if (KillsThisRound>=KillsNeeded && EnemiesAlive<=0) {
		RoundActive=false;
		AdvanceRound();
	}
}

if keyboard_check(vk_escape) {
	room_goto(rm_menu);
}