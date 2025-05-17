dialog = new scr_dialogue(); 

key_next = mb_left //left click

showing_dialog = false; //To show dialog

pause_main_dialog = false; //To pause the main dialog for choices

current_dialog = []; //To store dialog

alpha_trans = 0;
alpha_solid = 0;

dialog.add(spr_icon_nurse, "Dear.");
dialog.add(spr_icon_mc, "...");
dialog.add(spr_icon_nurse, "I'm sorry.");
dialog.add(spr_icon_mc, "...");
dialog.add(spr_icon_nurse, "I know it's hard to accept...");
dialog.add(spr_icon_nurse, "...and I wish we could've done more to save you.");
dialog.add(spr_icon_nurse, "But you won't last another day.");
dialog.add(spr_icon_nurse, "A few more hours at best.");
dialog.add(spr_icon_nurse, "Your body is very weak right now.");
dialog.add(spr_icon_nurse, "But I hope you make the most of your time here.");
dialog.add(spr_icon_mc, "...");
dialog.add(spr_icon_nurse, "*Sighs*");
dialog.add(spr_icon_nurse, "I'll leave you alone, now.");
dialog.add(spr_icon_mc, "...");
dialog.add(spr_icon_mc, "...");
dialog.add(spr_icon_mc, "I should call them.");
dialog.add(spr_icon_mc, "I need to say goodbye to everyone.");
dialog.add(spr_icon_mc, "...");
dialog.add(spr_icon_mc, "...Will I have enough time?");