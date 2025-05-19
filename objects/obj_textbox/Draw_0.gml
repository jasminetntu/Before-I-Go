//accept_key = mouse_check_button_pressed(mb_left);
accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 750; //800 = offset from top of screen
//text_x_offset[0] = 320; //testing

#region //--------- setup before drawing ---------
if (setup == false) {
	setup = true;
	draw_set_font(font_VT323_pt30);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for (var p = 0; p < page_number; p++) {
		text_length[p] = string_length(text[p]); //get length of each dialogue text/page
		
		//get x position for textbox
		//no character icon (center textbox)
		text_x_offset[p] = 320; 
	}
}
#endregion //setup

#region //--------- typing the text ----------
if (draw_char < text_length[page]) {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_length[page]);
}
#endregion //typing

#region //--------- flip through "pages"/continue through dialogue ---------
if (accept_key) {
	//if typing is done, go to next page
	if (draw_char == text_length[page]) {
		
		//go to next page if page is not the last one
		if (page < page_number - 1) {
			page++; //increment to next
			draw_char = 0; //reset the chars
		}
		else { //if page is last one, destroy textbox
			//link text for options
			if option_number > 0 {
				create_textbox(option_link_id[option_pos]);
			}
			
			instance_destroy();
		}
		
	}
	//if typing is NOT done, just continue filling page
	else if (draw_char != text_length[page]) && (draw_char > 1) {
		draw_char = text_length[page];	
	} //was originally just else, lets see if theres nay errors
}
#endregion //flip

#region //--------- draw the textbox ---------
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
textbox_img += textbox_img_spd; //for background anim if wanted
textbox_spr_w = sprite_get_width(textbox_spr);
textbox_spr_h = sprite_get_height(textbox_spr);

//back of textbox
draw_sprite_ext(textbox_spr, textbox_img, _txtb_x, _txtb_y, textbox_width/textbox_spr_w, textbox_height/textbox_spr_h, 0, c_white, 1);
#endregion //draw box

#region //--------- options ---------
if (draw_char == text_length[page]) && (page == page_number - 1) {
	
	//option selection
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number - 1);
	
	//draw the options
	var _op_space = 80; //vertical distance between options
	var _op_bord = 25; //text borders
	for (var op = 0; op < option_number; op++) {
		//the option box
		var _o_w = string_width(option[op]) + _op_bord * 2; //dynamically get option text width
		draw_sprite_ext(textbox_spr, textbox_img, _txtb_x + 60, _txtb_y - _op_space * option_number + _op_space * op, _o_w/textbox_spr_w, (_op_space - 1)/textbox_spr_h, 0, c_white, 1);
		
		//draw the arrow
		if (option_pos == op) {
			draw_sprite(spr_arrow_option, 0, _txtb_x + 10, _txtb_y - _op_space * option_number + _op_space * op + 20);
		}
		
		//draw option text
		draw_text(_txtb_x + _op_bord + 60, _txtb_y - _op_space * option_number + _op_space * op + 10, option[op]);
		//the +30 in the x values is to make space for the arrow
	} 
}
#endregion //options

#region //draw actual text
var _drawtext = string_copy(text[page],1,draw_char);
draw_text_ext(_txtb_x + border, _txtb_y + border, _drawtext, line_sep, line_width);

#endregion //draw text
