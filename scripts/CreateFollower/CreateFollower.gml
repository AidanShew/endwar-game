function CreateFollower(){
		instance_create_layer(obj_wp.x, obj_wp.y, "Instances", obj_follower);
		show_debug_message(string("Created follower"));
		//obj_game.EnemiesAlive+=1;
		obj_wp.spawned_followers+=1;
		if (obj_wp.spawned_followers!=obj_wp.follower_amount) {
			if (instance_number(obj_follower)==3){
				alarm[2]=obj_wp.follower_spawn_gap_2;
			}
			else {
				alarm[2]=obj_wp.follower_spawn_gap;
			}
		}
}