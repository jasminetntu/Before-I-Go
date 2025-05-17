if (pause_dialog == true) {
	showing_dialog = false; //doesn't show dialog if it's paused
	key_next = null;
}
else if (showing_dialog == false){
	if (dialog.count() <= 0){
		instance_destroy();
		return;
	}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
} else {
	if(mouse_check_button_released(key_next)){
		showing_dialog = false;
		alpha = 0;
	}
}
