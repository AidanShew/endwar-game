draw_self(); //makes font appear on button

draw_set_font(ft_menu); //sets the font

draw_set_halign(fa_center);
draw_set_valign(fa_middle); //these two align the text in the center of the button

draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);