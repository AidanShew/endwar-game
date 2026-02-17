draw_text(obj_wp.x+50, obj_wp.y, (string(wp_hp))); //Prints current HP above obj

if (draw==1) {
	random_x=random_range(obj_wp.x-50, obj_wp.x+50);
	random_y=random_range(obj_wp.y-50, obj_wp.y+50);
	tet=draw_text(random_x, random_y,( "-1"));
}