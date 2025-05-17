///@param text_id
function scr_game_text(text_id){
	
	switch (_text_id) {
		
		#region //mom dialogue
		case "mom":
			var points = 0;

			dialog.add(spr_icon_mom, "Hello? Sweetheart?");
			dialog.add(spr_icon_mom, "Oh...");
			dialog.add(spr_icon_mom, "You're calling people, aren't you?");

			if (mom_1_1 == true) {
				dialog.add(spr_icon_mc, "Yeah."); //something wrong
				points += 1;
				dialog.add(spr_icon_mc, points);
			}

			//pause_dialog = false;

			dialog.add(spr_icon_mom, "You sound so distant lately.");
			dialog.add(spr_icon_mom, "What’s wrong? Anything you want to tell me?");
			dialog.add(spr_icon_mom, "How have you been?");
			dialog.add(spr_icon_mom, "I miss hearing your voice.");

			//choices

			dialog.add(spr_icon_mom, "I still remember when you were five.");
			dialog.add(spr_icon_mom, "You were running around and tripped.");
			dialog.add(spr_icon_mom, "Got that cut on your forehead and wouldn’t stop crying.");
			dialog.add(spr_icon_mom, "You told me, \"Mama, I think I’m gonna die.\"");
			dialog.add(spr_icon_mom, "And I smiled, pulled you close, and laughed, saying, \"No, baby. Not today.\"");
			dialog.add(spr_icon_mom, "*sniffling*");
			dialog.add(spr_icon_mom, "I wish I could say that now.");
			dialog.add(spr_icon_mom, "I really, really do.");

			//choices

			dialog.add(spr_icon_mom, "I just wish I’d done more for you.");
			dialog.add(spr_icon_mom, "When you were alone…");
			dialog.add(spr_icon_mom, "I should’ve fought harder, been there when you needed me.");
			dialog.add(spr_icon_mom, "Pulled you out of that darkness.");
			dialog.add(spr_icon_mom, "I’m sorry I left you by yourself.");

			//choices


			//endings
			//if (points > #) {
	
			//}
			//else if (points
			
			break;
		#endregion
		
		#region //brother dialogue
		case "brother":
		
		
			break;
		#endregion
			
		#region //ex dialogue
		case "ex":
		
		
			break;
		#endregion
		
		#region //boss dialogue
		case "boss":
		
		
			break;
		#endregion
		
		#region //best friend dialogue
		case "best friend":
		
		
			break;
		#endregion
		
		
	}
	
}