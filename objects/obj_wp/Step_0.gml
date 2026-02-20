fireCounter+=1;
if (whirlpool_arrived&&killed_followers>0&&killed_followers>=follower_spawn_trigger+6) {
	follower_spawn_trigger+=6;
	spawned_followers=0;
	whirlpool_arrived=false;
}
else {
	whirlpool_movement();
}