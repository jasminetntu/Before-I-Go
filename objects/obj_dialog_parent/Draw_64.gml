if (showing_dialog = true) {
	var text_x = 30;
	var text_y = 18; //formerly negative?
	var height = 32;
	var border = 5;
	var padding = 16;
	
	height = string_height(current_dialog.message); //finds height of message
	
	if(sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);
	}
	
	height += padding * 2; // Padding top and bottom
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2); //width of text
	
	// Drawing dialog box
	draw_set_alpha(alpha);
	
	draw_set_color(c_black); //draws black rectangle (the text background)
	draw_rectangle(0, 0, display_get_gui_width(), height, false);
	
	draw_set_color(c_white); //draws border of rectangle
	draw_rectangle(border, border, display_get_gui_width() - border, height - border, false);

	draw_set_color(c_black); //draws inside of rectangle (black)
	draw_rectangle((border * 2), (border * 2), display_get_gui_width() - (border * 2), height - (border * 2), false);

	if (current_dialog.sprite != -1) {
		draw_sprite(current_dialog.sprite, 0, border * 3, border * 3);
	}

	// Drawing Text
	draw_set_color(c_white);
	draw_text_ext(text_x, text_y, current_dialog.message, 16, display_get_gui_width() - 192);
	//^ 16 is how much it can go vertically, the one after is horizontally
	//currently set to all the way across the screen
	
	alpha = lerp(alpha, 1, 0.06); //fades in the text


}

draw_set_alpha(1);