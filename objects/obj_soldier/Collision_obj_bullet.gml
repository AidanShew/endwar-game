effect_create_above(ef_firework, x, y, 1, c_red); //Creates effect
audio_play_sound(Explosion,0,false);
with (obj_game) {
	KillsThisRound+=1;
	EnemiesAlive-=1;
	obj_game.points+=50;
}
instance_destroy();