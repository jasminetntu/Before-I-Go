///@param text_id
function scr_game_text(_text_id){
	
	var curr_points = 0;
	//.1 = good opt, .2 = neutral, .3 = bad
	
	switch (_text_id) {
		
		#region //mom dialogue
		case "mom":
			//curr_points = 0;

			scr_text("Hello? Sweetheart?");
			scr_text("Oh...");
			scr_text("You're calling people, aren't you?");
				scr_option("Yeah.", "mom 1.1");
				scr_option("You knew?", "mom 1.2");
				scr_option("I'm tired. Can we just sit in silence?", "mom 1.3");
				break;
			case "mom 1.1":
				scr_text("I could tell. I think I always knew. I just didn’t want to.");
				//curr_points++;
				break;
			case "mom 1.2":
				scr_text("A mother knows everything, even if you try to hide it.");
				break;
			case "mom 1.3":
				scr_text("Don’t you dare waste what little time you have left in silence. Please--don’t do that.");
				//curr_points--;
				break;
			
		/*
			scr_text("You sound so distant lately.");
			scr_text("What’s wrong? Anything you want to tell me?");
			scr_text("How have you been?");
			scr_text("I miss hearing your voice.");


			scr_text("I still remember when you were five.");
			scr_text("You were running around and tripped.");
			scr_text("Got that cut on your forehead and wouldn’t stop crying.");
			scr_text("You told me, \"Mama, I think I’m gonna die.\"");
			scr_text("And I smiled, pulled you close, and laughed, saying, \"No, baby. Not today.\"");
			scr_text("*sniffling*");
			scr_text("I wish I could say that now.");
			scr_text("I really, really do.");

			//choices

			scr_text("I just wish I’d done more for you.");
			scr_text("When you were alone…");
			scr_text("I should’ve fought harder, been there when you needed me.");
			scr_text("Pulled you out of that darkness.");
			scr_text("I’m sorry I left you by yourself.");

			//choices


			//endings
			//if (points > #) {
	
			//}
			//else if (points
			
			
			*/
			
			//break;
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