depth = -9999;

//textbox parameters
textbox_width = 1000;
textbox_height = 200;
border = 50; //distance from sides of textbox
line_sep = 75; //separation between lines
line_width = textbox_width - (border * 2); //max length of text before moving to next line
textbox_spr = spr_dialogue_bg;
textbox_img = 0;
textbox_img_spd = 0;

//the text
page = 0; //what "page"/sequence of dialogue we're on
page_number = 0; //initial total pages = 0
text[0] = "hello"; //text that will actually appear on screen
text[1] = "world!";
text_length[0] = string_length(text[0]); //stores # of chars in text
draw_char = 0; //indicates how many chars are being drawn currently (for typing effect)
text_spd = 0.3; //speed

setup = false;

