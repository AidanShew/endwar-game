// ---This function handles movement---

function FollowerMovement(){
	var max_speed=10;
	var target_x=obj_wp.x+radius;
	var target_y=obj_wp.y;
	
	switch (state) {
		case 0:
		
			move_towards_point(target_x, target_y, max_speed);
			if (point_distance(x,y,target_x, target_y)<=5) {
				state=1;
				speed=0;
				orbit_angle=point_direction(obj_wp.x, obj_wp.y, x, y);
			}
			break;
		
		case 1:
			orbit_angle+=orbit_speed;
			x=obj_wp.x+lengthdir_x(radius, orbit_angle);
			y=obj_wp.y+lengthdir_y(radius, orbit_angle);
			image_angle=orbit_angle;
			
			break;
	}
}