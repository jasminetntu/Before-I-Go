//draws the button & text in it

draw_self(); //draw button

draw_set_font(font_VT323);  //sets text font
draw_set_halign(fa_center); //sets text to middle of button
draw_set_valign(fa_middle); //sets text to middle of button

draw_text(x, y, button_text); //draw text

//reset original alignment values
draw_set_halign(fa_left);
draw_set_valign(fa_top);