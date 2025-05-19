kkkkdepth = -9999;

//textbox parameters
textbox_width = 1000;
textbox_height = 230;
border = 50; //distance from sides of textbox
line_sep = 65; //separation between lines
line_width = textbox_width - (border * 2); //max length of text before moving to next line
textbox_spr[0] = spr_dialogue_bg;
textbox_img = 0;
textbox_img_spd = 0;

//the text
page = 0; //what "page"/sequence of dialogue we're on
page_number = 0; //initial total pages = 0
text[0] = "";
text_length[0] = string_length(text[0]); //stores # of chars in text
draw_char = 0; //indicates how many chars are being drawn currently (for typing effect)
text_spd = 0.3; //speed

//user options/choices
option[0] = ""; //the actual option text
option_link_id[0] = -1; //the id to reference in script
option_pos = 0; //start position of option at 0... might change bc we want left click
option_number = 0;


setup = false;

