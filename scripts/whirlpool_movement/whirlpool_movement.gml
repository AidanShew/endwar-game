// ---This function handles movement and firing---

function whirlpool_movement(){
	var max_speed=5;
	
	// ---Gets Middle of Screen--
	var screen_xmiddle=display_get_gui_width()/2;
	var screen_ymiddle=display_get_gui_height()/2;
	
	if (instance_exists(obj_player)){
		if (!whirlpool_arrived) {
			if (point_distance(x, y, screen_xmiddle, screen_ymiddle)<4) {
				whirlpool_arrived=true;
				show_debug_message(string("No followers found"));
				alarm[2]=60;
			}
			else {

				move_towards_point(screen_xmiddle, screen_ymiddle, max_speed);
			
				image_angle=point_direction(x, y, obj_player.x, obj_player.y);
			
				// ---Fire rate manager---
				if (fireCounter>=wp_fire_limit) {
					instance_create_layer(x,y,"Instances", obj_wpbullet).direction=image_angle;
					fireCounter=0;
				}
			}
		}
		else if (whirlpool_arrived) {
			speed=0;
			image_angle+=1;
			// ---Dual Fire Rate Manager---
			if (fireCounter>=wp_fire_limit) {
				instance_create_layer(x,y,"Instances", obj_wpbullet).direction=image_angle;
				instance_create_layer(x,y,"Instances", obj_wpbullet).direction=image_angle+180;
				fireCounter=0;
			}
		}
	}
}