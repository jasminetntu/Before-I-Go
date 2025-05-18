// scr_fadeInfadeOut(rm_cutscene, 0.01, 0.0075);
function scr_fadeInfadeOut(new_room, fade_out_rate, fade_in_rate){
    
	var ins = instance_create_depth(0, 0, -999, obj_fader);
	ins.room_to_transform_into = new_room;
	ins.fade_in_speed = fade_in_rate;
	ins.fade_out_speed = fade_out_rate;

}