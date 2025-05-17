accept_key = mouse_check_button_pressed(mb_left);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 800; //800 = offset from top of screen


//*****setup before drawing*****
if (setup == false) {
	setup = true;
	draw_set_font(font_VT323_pt40);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	page_number = array_length(text); //total number of pages
	for (var p = 0; p < page_number; p++) {
		text_length[p] = string_length(text[p]); //get length of each dialogue text/page
		
		//get x position for textbook
		//no character icon (center textbox)
		text_x_offset[p] = 320; 
	}
}

//typing the text 
if (draw_char < text_length[page]) {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//flip through "pages"/continue through dialogue
if (accept_key) {
	//if typing is done, go to next page
	if (draw_char == text_length[page]) {
		
		//go to next page if page is not the last one
		if (page < page_number - 1) {
			page++; //increment to next
			draw_char = 0; //reset the chars
		}
		else { //if page is last one, destroy textbox
			instance_destroy();
		}
		
	}
	//if typing is NOT done, just continue filling page
	else {
		draw_char = text_length[page];
	}
}

//***** draw the textbox *****
textbox_img += textbox_img_spd; //for background anim if wanted
textbox_spr_w = sprite_get_width(textbox_spr);
textbox_spr_h = sprite_get_height(textbox_spr);

//back of textbox
draw_sprite_ext(textbox_spr, textbox_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/textbox_spr_w, textbox_height/textbox_spr_h, 0, c_white, 1);

//draw actual text
var _drawtext = string_copy(text[page],1,draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);

