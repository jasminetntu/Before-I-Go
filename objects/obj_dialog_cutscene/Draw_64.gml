if (showing_dialog = true) {
	var text_x = 30;
	var text_y = 18;
	var height = 100;
	var border = 5;
	var padding = 16;
	var x_coord = 150;
	var y_coord = 800;
	
	height = string_height(current_dialog.message); //finds height of message
	
	if(sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);
	}
	
	height += padding * 2; // Padding top and bottom
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2); //width of text
	
	// Drawing dialog box
	//draw_set_alpha(alpha_trans);
	//draw_set_color(#017AFF); //draws a rectangle (the text background)
	//draw_rectangle(x_coord, y_coord, display_get_gui_width() - x_coord, y_coord + height, true);
	
	draw_set_alpha(alpha_trans)
	draw_set_color(c_white); //draws border of rectangle
	draw_rectangle(x_coord + border, y_coord + border, display_get_gui_width() - x_coord - border, y_coord + height - border, false);

	draw_set_alpha(alpha_trans);
	draw_set_color(#017AFF); //draws inside of rectangle
	draw_rectangle(x_coord + (border * 2), y_coord + (border * 2), display_get_gui_width() - x_coord - (border * 2), y_coord + height - (border * 2), false);

	if (current_dialog.sprite != -1) {
		draw_set_alpha(alpha_solid)
		draw_sprite(current_dialog.sprite, 0, x_coord + border * 3, y_coord + border * 3);
	}

	// Drawing Text
	draw_set_alpha(alpha_solid)
	draw_set_color(c_white);
	draw_text_ext(x_coord + text_x, y_coord + text_y, current_dialog.message, 16, display_get_gui_width() - x_coord - (border * 4));
	//^ 16 is how much it can go vertically, the one after is horizontally
	//currently set to all the way across the screen
	
	alpha_trans = lerp(alpha_trans, 0.6, 0.06); //fades in dialogue
	alpha_solid = lerp(alpha_solid, 1, 0.06);

}

draw_set_alpha(1);