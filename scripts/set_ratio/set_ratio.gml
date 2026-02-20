function set_ratio(){
	ScreenWidth=display_get_width();
	var ScreenHeight=display_get_height();
	var base_width=1920;
	var base_height=1080;
	var scale=min(ScreenWidth/base_width, ScreenHeight/base_height);
	window_set_size(base_width*scale,base_height*scale);
	window_set_fullscreen(true);
}