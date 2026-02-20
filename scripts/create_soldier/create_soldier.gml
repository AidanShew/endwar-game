function create_soldier(loopAmount){
	var gameMargin=150;
	var previous_draw=0;
	var previous_enemy
	for (var i=0; i<loopAmount; i++) {
		
		var enemy=instance_create_layer(0,0, "Instances", obj_soldier);
		show_debug_message("Created enemy soldier");
		obj_game.EnemiesAlive+=1;
		with (enemy) {
			var side=irandom(2); //random number from 0 to 3
			switch (side) {
				case 0: //Right Side
				x=room_width+gameMargin;
				y=irandom(room_height);
				break;
	
				case 1: //Left Side
				x=-gameMargin;
				y=irandom(room_height);
				break;
	
				case 2: //Top
				x=irandom(room_width);
				y=-gameMargin;
				break;
			}
			previous_draw=side;
			previous_enemy=enemy;
		}
	}
}