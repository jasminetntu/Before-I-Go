//@description CHOICE 1

var mom_1_1 = false;

instance_create_layer(300, 600, "Instances", obj_button_mom_1_good);
//instance_create_layer();
//instance_create_layer();

if (mom_1_1 == true) {
	dialog.add(spr_icon_mc, "Yeah."); //something wrong
	points += 1;
	dialog.add(spr_icon_mc, points);
}
