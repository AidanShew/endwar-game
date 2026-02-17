// Inherit the parent event
event_inherited();
if (room==rm_over_s){
	room_goto(rm_survival);
}
else {
	room_goto(rm_horde);
}