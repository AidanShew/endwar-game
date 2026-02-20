obj_bullet.speed=40;
audio_play_sound(Fire2,0,false);
/*
---Mouse Controls---
var max_angle=22.5; //Lock angle to 22.5*2=45
var normalized=clamp(((device_mouse_x_to_gui(0)/display_get_gui_width())*2-1),-1,1);
var angle_offset=normalized*max_angle;
obj_bullet.direction=-angle_offset+90; //Add 90 to compensate for sideways sprite issue.
*/