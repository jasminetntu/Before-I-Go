function scr_set_defaults_for_text() {
	//he has some stuff here for text anim i think
	
	textbox_spr[page_number] = spr_dialogue_bg;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
}



//adds line of text to dialogue sequence
/// @param text
/// @param [character] (optional sprite)
function scr_text(_text){
	scr_set_defaults_for_text();
	text[page_number] = _text;
	
	//get character info
	if (argument_count > 1) {
		switch (argument[1]) {
			case "mom":
			speaker_sprite[page_number] = spr_icon_mom;
				break;
			case "brother":
			speaker_sprite[page_number] = spr_icon_brother;
				break;
			case "ex":
			speaker_sprite[page_number] = spr_icon_ex;
				break;
			case "boss":
			speaker_sprite[page_number] = spr_icon_boss;
				break;
			case "best friend":
			speaker_sprite[page_number] = spr_icon_bestFriend;
				break;
		}
	}
	
	page_number++;
}


/// @param option_text
/// @param option_link_id
function scr_option(_option_text, _option_link_id) {
	option[option_number] = _option_text;
	option_link_id[option_number] = _option_link_id;
	option_number++;
}


/// @param text_id
function create_textbox(_text_id) {
	with (instance_create_depth(0, 0, -9999, obj_textbox)) {
		scr_game_text(_text_id); 
		//set text id in the create event of each individual instance
	}
}