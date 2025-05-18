///@param text_id
function scr_game_text(_text_id){
	//.1 = good opt, .2 = neutral, .3 = bad
	
	switch (_text_id) {
		
		#region //room done
		case "room done":
			global.curr_points = 0; //reset points
			global.room_done = true;
			scr_text(""); //need to have this so it doesnt crash...
			break;
			#endregion //room done
		
		#region //cutscene
		case "cutscene":
			scr_text("Dear.");
				scr_option("...", "cutscene 1");
				break;
				
				case "cutscene 1":
					scr_text("I'm sorry.");
						scr_option("...", "cutscene 2");
						break;
					
				case "cutscene 2":
					scr_text("I know it's hard to accept...");
					scr_text("...and I wish we could've done more to save you.");
					scr_text("But you won't last another day.");
					scr_text("A few more hours at best.");
					scr_text("Your body is very weak right now.");
					scr_text("But I hope you make the most of your time here.");
						scr_option("...", "cutscene 3");
						break;
				
				case "cutscene 3":
					scr_text("*Sighs*");
					scr_text("I'll leave you alone, now.");
					scr_text("*The nurse leaves, and you are left with your thoughts.*");
					scr_text("...");
					scr_text("...");
					scr_text("I should call them.");
					scr_text("I need to say goodbye to everyone.");
					scr_text("...");
					scr_text("...Will I have enough time?");
						scr_option("*Take out your phone*", "room done");
						break;
		
			#endregion //cutscene
		
		#region //mom dialogue
		case "mom":
			
			#region //mom 1
			scr_text("Hello? Sweetheart?");
			scr_text("Oh...");
			scr_text("You're calling people, aren't you?");
				scr_option("Yeah.", "mom 1.1");
				scr_option("You knew?", "mom 1.2");
				scr_option("I'm tired. Can we just sit in silence?", "mom 1.3");
				break;
				
			#region //mom 1.1
			case "mom 1.1":
				global.curr_points++;
				scr_text("I could tell. I think I always knew. I just didn't want to.");
				//scr_text(curr_points); //testing
				
				#region  //----- mom 2 ----- 
				scr_text("You sound so distant lately.");
				scr_text("How have you been?");
				scr_text("I miss hearing your voice.");
					scr_option("I don't think I'll see the morning.", "mom 2.1");
					scr_option("I don't know.", "mom 2.2");
					scr_option("It won't change anything now.", "mom 2.3");
					break;
					#endregion //----- mom 2 ----- 
				
				#endregion //mom 1.1
				
			#region //mom 1.2
			case "mom 1.2":
				scr_text("A mother knows everything, even if you try to hide it.");
				
				#region  //----- mom 2 ----- 
				scr_text("You sound so distant lately.");
				scr_text("How have you been?");
				scr_text("I miss hearing your voice.");
					scr_option("I don't think I'll see the morning.", "mom 2.1");
					scr_option("I don't know.", "mom 2.2");
					scr_option("It won't change anything now.", "mom 2.3");
					break;
					#endregion //----- mom 2 ----- 
				
				#endregion //mom 1.2
			
			#region //mom 1.3
			case "mom 1.3":
				global.curr_points--;
				scr_text("Don't you dare waste what little time you have left in silence.");
				scr_text("Please--don't do that.");
				
				#region  //----- mom 2 ----- 
				scr_text("You sound so distant lately.");
				scr_text("How have you been?");
				scr_text("I miss hearing your voice.");
					scr_option("I don't think I'll see the morning.", "mom 2.1");
					scr_option("I don't know.", "mom 2.2");
					scr_option("It won't change anything now.", "mom 2.3");
					break;
					#endregion //----- mom 2 ----- 
					
				#endregion //mom 1.3
			
			#region //options 2
				#region  //mom 2.1
				case "mom 2.1":
					global.curr_points++;
					scr_text("Okay... I see.");
					scr_text("Let's just... talk about our days. Please? Can we?");
				
					#region //----- mom 3 ----- 
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
						break;
						#endregion //----- mom 3 ----- 
				
					#endregion //mom 2.1
			
				#region  //mom 2.2
				case "mom 2.2":
					scr_text("You don't have to say it. But I need to hear it. Please.");
				
					#region //----- mom 3 ----- 
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
						break;
						#endregion //----- mom 3 ----- 

					#endregion //mom 2.2
				
				#region  //mom 2.3
				case "mom 2.3":
					global.curr_points--;
					scr_text("Jesus. You'd rather die than open up to me?");
					scr_text("I'm your mom, for crying out loud.");
				
					#region //----- mom 3 ----- 
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
						break;
						#endregion //----- mom 3 ----- 
				
					#endregion //2.3
				
				#region //mom options 3
					#region //mom 3.1
					case "mom 3.1":
						global.curr_points++;
						scr_text("*She lets out a soft laugh. It's bittersweet.*");
						scr_text("You were so dramatic.");
						scr_text("I'd give anything to go back. Just to fix things with you.");
					
						#region //----- mom 4 ----- 
						scr_text("I just wish I'd done more for you.");
						scr_text("When you were alone...");
						scr_text("I should've fought harder, been there when you needed me.");
						scr_text("Pulled you out of that darkness.");
						scr_text("I'm sorry I left you by yourself.");
							scr_option("Mom, you did everything.", "mom 4.1");
							scr_option("I don't blame you for anything.", "mom 4.2");
							scr_option("Not like this. Please.", "mom 4.3");
							break;
							#endregion //----- mom 4 ----- 
						
						#endregion //mom 3.1
				
					#region //mom 3.2
					case "mom 3.2":
						scr_text("I know.");
						scr_text("I'm scared this might be the last time I get to.");
					
						#region //----- mom 4 ----- 
						scr_text("I just wish I'd done more for you.");
						scr_text("When you were alone...");
						scr_text("I should've fought harder, been there when you needed me.");
						scr_text("Pulled you out of that darkness.");
						scr_text("I'm sorry I left you by yourself.");
							scr_option("Mom, you did everything.", "mom 4.1");
							scr_option("I don't blame you for anything.", "mom 4.2");
							scr_option("Not like this. Please.", "mom 4.3");
							break;
							#endregion //----- mom 4 ----- 
						
						#endregion //mom 3.2
				
					#region //mom 3.3
					case "mom 3.3":
						global.curr_points--;
						scr_text("I'm sorry.");
						scr_text("I'm just trying to hold on to something... anything.");
					
						#region //----- mom 4 ----- 
						scr_text("I just wish I'd done more for you.");
						scr_text("When you were alone...");
						scr_text("I should've fought harder, been there when you needed me.");
						scr_text("Pulled you out of that darkness.");
						scr_text("I'm sorry I left you by yourself.");
							scr_option("Mom, you did everything.", "mom 4.1");
							scr_option("I don't blame you for anything.", "mom 4.2");
							scr_option("Not like this. Please.", "mom 4.3");
							break;
							#endregion //----- mom 4 ----- 
							
						#endregion //mom 3.3
					
					#region //mom options 4
						
						#region //mom 4.1
						case "mom 4.1":
							global.curr_points++;
							scr_text("It still doesn't feel like enough.");
							scr_text("I should've known. I should've done more.");
							
							if (global.curr_points >= 3) {
								scr_option("I love you, mom.", "mom good");
							}
							else {
								scr_option("Goodbye, mom.", "mom bad");
							}
							break;
							#endregion
					
						#region //mom 4.2
						case "mom 4.2":
							scr_text("But I blame myself every single day.");
							scr_text("You deserved better than what I gave you.");
							
							if (global.curr_points >= 3) {
								scr_option("I love you, mom.", "mom good");
							}
							else {
								scr_option("Goodbye, mom.", "mom bad");
							}
							
							break;
							#endregion
					
						#region //mom 4.3
						case "mom 4.3":
							global.curr_points--;
							scr_text("*She starts crying.*");
							scr_text("I can't stop. I can't.");
							scr_text("I should've done more for you.");
							
							if (global.curr_points >= 3) {
								scr_option("I love you, mom.", "mom good");
							}
							else {
								scr_option("Goodbye, mom.", "mom bad");
							}
							
							break;
							#endregion
						
						#region //endings
						case "mom good":
							scr_text("*Her voice breaks, and you can tell she is trying to be strong.*");
							scr_text("I love you too, sweetheart.");
							scr_text("I... I don't know how to do this.");
							scr_text("I wish I could be there with you right now.");
							scr_text("*You hear her take a deep breath.*");
							scr_text("You've been so strong through all of this.");
							scr_text("It's okay. You don't have to fight anymore.");
							scr_text("I'll hold onto every memory. Every moment we shared.");
							scr_text("You brought so much light into my life.");
							scr_text("*She cries quietly.*");
							scr_text("Goodbye, my precious baby.");
							scr_text("I'll love you forever.");
								global.mom_done = true;
								scr_option("I love you. Goodbye.", "room done");
								break;
						
						case "mom bad":
							scr_text("*She begins crying, begging through her tears.*");
							scr_text("No, no-please don't hang up. Please don't...");
							scr_text("Don't leave me.");
							scr_text("Don't say goodbye.");
							scr_text("Please!");
								global.mom_done = true;
								scr_option("Goodbye.", "room done");
								break;
						
							#endregion
					
						#endregion //mom options 4
					
					#endregion //mom options 3
				
				#endregion //mom options 2
			#endregion //----- mom 1 -----
			

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