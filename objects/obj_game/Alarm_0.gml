//Alarm 0 will restart the room, reset lives and health.
//Used whenever all lives are gone.
obj_PlayerStats.RecentPoints=points;
obj_PlayerStats.RecentRound=obj_PlayerStats.ArenaRound;
if (obj_PlayerStats.RecentRound>obj_PlayerStats.HighestRound) {
	obj_PlayerStats.HighestRound=obj_PlayerStats.ArenaRound;
}
if (obj_PlayerStats.RecentPoints>obj_PlayerStats.HighScore) {
	obj_PlayerStats.HighScore=obj_PlayerStats.RecentPoints;
}

if (room==rm_survival) {
	room_goto(rm_over_s);
}
else if (room==rm_horde) {
	room_goto(rm_over_h);
}
