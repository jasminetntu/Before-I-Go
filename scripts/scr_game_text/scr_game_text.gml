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
				scr_text("I could tell. I think I always knew. I just didn't want to.");
				//curr_points++;
				break;
			case "mom 1.2":
				scr_text("A mother knows everything, even if you try to hide it.");
				break;
			case "mom 1.3":
				scr_text("Don't you dare waste what little time you have left in silence.");
				scrtext("Please--don't do that.");
				//curr_points--;
				break;
			
			scr_text("You sound so distant lately.");
			scr_text("What's wrong? Anything you want to tell me?");
			scr_text("How have you been?");
			scr_text("I miss hearing your voice.");
                scr_option("I don't think I'll see the morning.", "mom 2.1");
				scr_option("I don't know.", "mom 2.2");
				scr_option("It won't change anything now.", "mom 2.3");
			//options cases
			case "mom 2.1":
				scr_text("");
				//curr_points++;
				break;
			case "mom 2.2":
				scr_text("");
				break;
			case "mom 2.3":
				scr_text("");
				//curr_points--;
				break;

			scr_text("I still remember when you were five.");
			scr_text("You were running around and tripped.");
			scr_text("Got that cut on your forehead and wouldn't stop crying.");
			scr_text("You told me, \"Mama, I think I'm gonna die.\"");
			scr_text("And I smiled, pulled you close, and laughed, saying, \"No, baby. Not today.\"");
			scr_text("*sniffling*");
			scr_text("I wish I could say that now.");
			scr_text("I really, really do.");
				scr_option("I remember.", "mom 3.1");
				scr_option("You always tell that story.", "mom 3.2");
				scr_option("That's such a weird memory to bring up.", "mom 3.3");
			//choices

			case "mom 3.1":
				scr_text("*She lets out a soft laugh. It's bittersweet.*");
				scr_text("You were so dramatic.");
				scr_text("I'd give anything to go back. Just to fix things with you.");
				break;
			case "mom 3.2":
				scr_text("I know.");
				scr_text("I'm scared this might be the last time I get to.");
				break;
			case "mom 3.3":
				scr_text("I'm sorry.");
				scr_text("I'm just trying to hold on to something... anything.");
				break;

			scr_text("I just wish I'd done more for you.");
			scr_text("When you were alone…");
			scr_text("I should've fought harder, been there when you needed me.");
			scr_text("Pulled you out of that darkness.");
			scr_text("I'm sorry I left you by yourself.");
				scr_option("Mom, you did everything.", "mom 4.1");
				scr_option("I don't blame you for anything.", "mom 4.2");
				scr_option("Not like this. Please.", "mom 4.3");
			//choices
			case "mom 4.1":
				scr_text("It still doesn't feel like enough.");
				scr_text("I should've known. I should've done more.");
				//curr_points++;
				break;
			case "mom 4.2":
				scr_text("But I blame myself every single day.");
				scr_text("You deserved better than what I gave you.");
				break;
			case "mom 4.3":
				scr_text("*She starts crying.*");
				scr_text("I can't stop. I can't.");
				scr_text("I should've done more for you.");
				//curr_points--;
				break;

			//endings
			//if (points > #) {
	
			//}
			//else if (points
			
			
			
			
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