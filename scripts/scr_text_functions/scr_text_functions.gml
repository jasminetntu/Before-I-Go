
//adds line of text to dialogue sequence
/// @param text
function scr_text(_text){
	text[page_number] = _text;
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