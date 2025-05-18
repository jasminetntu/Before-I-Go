if (position_meeting(mouse_x, mouse_y, id)) && (mouse_check_button_pressed(mb_left)) 
	&& (not instance_exists(obj_textbox)) {
	create_textbox(text_id);
}

if (global.room_done == true) {
	global.room_done = false; //reset for next room
	scr_fadeInfadeOut("next_room", 0.03, 0.02);
	
	//destroy contact if already talked with
	if (global.mom_done == true) && (text_id == "mom") {
		instance_destroy();
	}
	else if (global.brother_done == true) && (text_id == "brother") {
		instance_destroy();
	}
	else if (global.ex_done == true) && (text_id == "ex") {
		instance_destroy();
	}
	else if (global.boss_done == true) && (text_id == "boss") {
		instance_destroy();
	}
	else if (global.best_friend_done == true) && (text_id == "best friend") {
		instance_destroy();
	}
	
}
