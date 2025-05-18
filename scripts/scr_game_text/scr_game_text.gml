///@param text_id
function scr_game_text(_text_id){
	//.1 = good opt, .2 = neutral, .3 = bad
	
	switch (_text_id) {
		
		#region room done
		case "room done":
			global.curr_points = 0; //reset points
			global.room_done = true; //to move to next room
			scr_text(""); //need to have this so it doesnt crash...
			break;
			#endregion //room done
		
		#region beginning cutscene 
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

//-----------------------------------------------------------------------------------
		
		#region mom dialogue 
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
			
			
			
			
			//break;
		#endregion

//-----------------------------------------------------------------------------------

		#region brother dialogue 
		case "brother":
			scr_text("*You haven't spoken to him in years.*");
			scr_text("*You wonder if he'll ever forgive you.*");
			scr_text("*But you have to try before it's too late.*");
			
			scr_text("...");
			scr_text("Who the hell is this?");
				scr_option("It's me.", "brother 1.1");
				scr_option("You deleted my number?", "brother 1.2");
				scr_option("I didn't think you'd answer.", "brother 1.3");
				break;
				
			//options 1
			#region //brother 1.1
			case "brother 1.1":
				global.curr_points++;
				scr_text("Oh. It's you.");
				scr_text("Christ. You've got some nerve.");
				scr_text("Didn't think you'd actually call- not after everything.");
				scr_text("You really think I'd just pick up like nothing happened?");
				
				#region //brother 2
				scr_text("You skipped Dad' s funeral, then skipped town.");
				scr_text("The only reason I knew you were alive was because Mom kept calling me.");
				scr_text("It was pathetic.");
					scr_option("I'm sorry for not being there.", "brother 2.1");
					scr_option("I couldn't handle it.", "brother 2.2");
					scr_option("I didn't think you'd want me there.", "brother 2.3");
					#endregion //brother 2
					break;

				#endregion //brother 1.1
			
			#region //brother 1.2
			case "brother 1.2":
				scr_text("What? You expected me to keep it?");
				scr_text("You disappeared.");
				scr_text("You're lucky I even remember who you are.");
				
				#region //brother 2
				scr_text("You skipped Dad's funeral, then skipped town.");
				scr_text("The only reason I knew you were alive was because Mom kept calling me.");
				scr_text("It was pathetic.");
					scr_option("I'm sorry for not being there.", "brother 2.1");
					scr_option("I couldn't handle it.", "brother 2.2");
					scr_option("I didn't think you'd want me there.", "brother 2.3");
					#endregion //brother 2
					break;
					
				#endregion //brother 1.2
				
			#region //brother 1.3
			case "brother 1.3":
				global.curr_points--;
				scr_text("*He lets out a dry laugh.*");
				scr_text("Yeah, well, I didn't think you'd call.");
				scr_text("Figured you were gone for good.");
				
				#region //brother 2
				scr_text("You skipped Dad's funeral, then skipped town.");
				scr_text("The only reason I knew you were alive was because Mom kept calling me.");
				scr_text("It was pathetic.");
					scr_option("I'm sorry for not being there.", "brother 2.1");
					scr_option("I couldn't handle it.", "brother 2.2");
					scr_option("I didn't think you'd want me there.", "brother 2.3");
					#endregion //brother 2
					break;
					
				#endregion //brother 1.3
			
				//options 2
				#region //brother 2.1
				case "brother 2.1":
					global.curr_points++;
					scr_text("*He lets out a soft exhale, as if he weren't expecting it.");
					scr_text("Yeah... you messed up.");
					scr_text("But at least you're owning it.");
					scr_text("Doesn't mean I'm ready to forgive you.");
					
					#region brother 3
					scr_text("Wait.");
					scr_text("You sound... different.");
					scr_text("...Is something wrong with you?");
						scr_option("Yeah. It's... bad.", "brother 3.1");
						scr_option("I'm... in the hospital.", "brother 3.2");
						scr_option("It doesn't matter.", "brother 3.3");
						#endregion brother 3
						break;

					#endregion //brother 2.1
			
				#region //brother 2.2
				case "brother 2.2":
					scr_text("Nobody could.");
					scr_text("But at least we didn't run.");
					scr_text("Mom fell apart. I planned the funeral alone.");
					scr_text("You left us to deal with everything.");

					#region brother 3
						scr_text("Wait.");
						scr_text("You sound... different.");
						scr_text("...Is something wrong with you?");
							scr_option("Yeah. It's... bad.", "brother 3.1");
							scr_option("I'm... in the hospital.", "brother 3.2");
							scr_option("It doesn't matter.", "brother 3.3");
							#endregion brother 3
							break;
					
					#endregion //brother 2.2
				
				#region //brother 2.3
				case "brother 2.3":
					global.curr_points--;
					scr_text("Yeah, I didn't.");
					scr_text("But Mom did.");
					scr_text("*His voice rises. He sounds angry.*");
					scr_text("*Hurt.*");
					scr_text("I needed you, too.");
					scr_text("...Even if I didn't say it back then.");
					
					#region brother 3
					scr_text("Wait.");
					scr_text("You sound... different.");
					scr_text("...Is something wrong with you?");
						scr_option("Yeah. It's... bad.", "brother 3.1");
						scr_option("I'm... in the hospital.", "brother 3.2");
						scr_option("It doesn't matter.", "brother 3.3");
						#endregion brother 3
						break;
					
					#endregion //brother 2.3
				
				
					//options 3
					#region //brother 3.1
					case "brother 3.1":
						global.curr_points++;
						scr_text("*He's quiet.*");
						scr_text("...You should've told me sooner.");
						
						#region brother 4
						scr_text("Why now?");
						scr_text("Why call me at all?");
							scr_option("Because I don't want it to end this way.", "brother 4.1");
							scr_option("Because I'm out of time.", "brother 4.2");
							scr_option("Because I felt guilty.", "brother 4.3");
							#endregion brother 4
							break;
						
						#endregion //brother 3.1
			
					#region //brother 3.2
					case "brother 3.2":
						scr_text("You waited this long to tell me that?");
						scr_text("Jesus.");
						scr_text("No wonder mom kept calling me.");
						
						#region brother 4
						scr_text("Why now?");
						scr_text("Why call me at all?");
							scr_option("Because I don't want it to end this way.", "brother 4.1");
							scr_option("Because I'm out of time.", "brother 4.2");
							scr_option("Because I felt guilty.", "brother 4.3");
							#endregion brother 4
							break;
							
						#endregion //brother 3.2
				
					#region //brother 3.3
					case "brother 3.3":
						global.curr_points--;
						scr_text("The hell it doesn't.");
						scr_text("You don't get to just- drop that bombshell,");
						scr_text("and expect me to brush it off??");
						
						#region brother 4
						scr_text("Why now?");
						scr_text("Why call me at all?");
							scr_option("Because I don't want it to end this way.", "brother 4.1");
							scr_option("Because I'm out of time.", "brother 4.2");
							scr_option("Because I felt guilty.", "brother 4.3");
							#endregion brother 4
							break;
						
						#endregion //brother 3.3
					
						//options 4
						#region //brother 4.1
						case "brother 4.1":
							global.curr_points++;
							scr_text("...");
							scr_text("...Me neither, if I'm being honest.");
							scr_text("I'm still mad.");
							scr_text("But I never stopped caring.");
							
							if (global.curr_points >= 3) {
								scr_option("I love you.", "brother good");
							}
							else {
								scr_option("Goodbye.", "brother bad");
							}
							
							break;

							#endregion //brother 4.1
			
						#region //brother 4.2
						case "brother 4.2":
							scr_text("Of course you are.");
							scr_text("You always wait until the last second.");
							scr_text("I just wish this wasn't all we had left.");
							
							if (global.curr_points >= 3) {
								scr_option("I love you.", "brother good");
							}
							else {
								scr_option("Goodbye.", "brother bad");
							}
							
							break;
							#endregion //brother 4.2
				
						#region //brother 4.3
						case "brother 4.3":
							global.curr_points--;
							scr_text("Guilt?");
							scr_text("That's what brought you back?");
							scr_text("Trying to clear your conscience?");
							scr_text("It's a little late for that, don't you think?");
							
							if (global.curr_points >= 3) {
								scr_option("I love you.", "brother good");
							}
							else {
								scr_option("Goodbye.", "brother bad");
							}
				
							break;
							#endregion //brother 4.3
						
						//endings
						#region brother good
						case "brother good":
							scr_text("*Silence fills the air. It is suffocating.*");
							scr_text("You...");
							scr_text("You can't do that.");
							scr_text("You waited until the end to say that?");
							scr_text("A part of me still resents you.");
							scr_text("Might be that way for a while.");
							scr_text("But I'll never stop loving you.");
							scr_text("I just wish we had more time.");
							scr_text("I'm glad you called.");
								global.brother_done = true;
								scr_option("...Bye.", "room done");
								break;
							#endregion brother good
							
						#region brother bad
						case "brother bad":
							scr_text("Seriously? That's it?");
							scr_text("You come back just to disappear again?");
							scr_text("You couldn't stick around long enough to make this right?");
							scr_text("Whatever.");
							scr_text("Hope whatever time you've got left is worth it.");
								global.brother_done = true;
								scr_option("...", "room done");
								break;
							#endregion brother bad
		
			break;
		#endregion

//-----------------------------------------------------------------------------------	
		
		#region ex dialogue
		case "ex":
			scr_text("*My ex.*");
			scr_text("There's a reason their contact name is \"DO NOT CALL.\"");
			scr_text("I told myself I wouldn't...");
			scr_text("...but I need to hear it from them.");
			scr_text("Whether or not they ever really cared.");
			
			scr_text("...");
			scr_text("I knew you'd come crawling back.");
			scr_text("So? What do you want?");
			scr_text("Don't pretend you didn't miss me.");
			scr_text("Someone better be dying.");
				scr_option("I am dying.", "ex 1.1");
				scr_option("I just needed to talk to someone.", "ex 1.2");
				scr_option("I thought maybe you'd want to know how I was.", "ex 1.3");
				break;
			
			
			//options 1
			
			#region ex 1.1
			case "ex 1.1":
				global.curr_points++;
				scr_text("*They snort.*");
				scr_text("You serious?");
				scr_text("You disappear for how long, then drop this on me?");
				scr_text("You were always a mess.");
				scr_text("Part of me isn't even surprised.");

				#region ex 2
				scr_text("You think just showing up again means I'm supposed to forget how you left?");
				scr_text("I made you.");
				scr_text("You were nothing before me.");
					scr_option("You didn't make me.", "ex 2.1");
					scr_option("I don't want to fight.", "ex 2.2");
					scr_option("You ruined me.", "ex 2.3");
					#endregion ex 2
					break;
					
				#endregion ex 1.1
				
			#region ex 1.2
			case "ex 1.2":
				scr_text("Of course you did.");
				scr_text("No one else is picking up?");
				scr_text("You always end up crawling back.");
		
				#region ex 2
				scr_text("You think just showing up again means I'm supposed to forget how you left?");
				scr_text("I made you.");
				scr_text("You were nothing before me.");
					scr_option("You didn't make me.", "ex 2.1");
					scr_option("I don't want to fight.", "ex 2.2");
					scr_option("You ruined me.", "ex 2.3");
					#endregion ex 2
					break;
					
				#endregion ex 1.2
				
			#region ex 1.3
			case "ex 1.3":
				global.curr_points--;
				scr_text("Come on.");
				scr_text("Don't act like this is about me.");
				scr_text("You want something.");
				scr_text("You always did.");
				
				#region ex 2
				scr_text("You think just showing up again means I'm supposed to forget how you left?");
				scr_text("I made you.");
				scr_text("You were nothing before me.");
					scr_option("You didn't make me.", "ex 2.1");
					scr_option("I don't want to fight.", "ex 2.2");
					scr_option("You ruined me.", "ex 2.3");
					#endregion ex 2
					break;
					
				#endregion ex 1.3
			
				
				//options 2
					
				#region ex 2.1
				case "ex 2.1":
					global.curr_points++;
					scr_text("*They laugh mockingly.*");
					scr_text("Sure.");
					scr_text("Keep telling yourself that.");
					scr_text("But I'm the only one who stuck around.");
					scr_text("Even now, you're calling me of all people.");

					#region ex 3
					
						#endregion ex 3
						break;
					
					#endregion ex 2.1
				
				#region ex 2.2
				case "ex 2.2":
					scr_text("Is that so?");
					scr_text("Funny, because that's all we ever did.");
					scr_text("Let's not pretend that you hated it.");
					
					#region ex 3
					
						#endregion ex 3
						break;
					
					#endregion ex 2.2
				
				#region ex 2.3
				case "ex 2.3":
					global.curr_points--;
					scr_text("Please.");
					scr_text("You were already ruined when I found you.");
					scr_text("I just stopped pretending I could fix you.");

					
					#region ex 3
					
					
						#endregion ex 3
						break;
					
					#endregion ex 2.3

				
					//options 3
					
						scr_option("", "ex 3.1");
						scr_option("", "ex 3.2");
						scr_option("", "ex 3.3");
					
						//options 4
						
							scr_option("", "ex 4.1");
							scr_option("", "ex 4.2");
							scr_option("", "ex 4.3");
						
			
			break;
		#endregion
		
//-----------------------------------------------------------------------------------
		
		#region boss dialogue
		case "boss":
		
		
			break;
		#endregion
		
//-----------------------------------------------------------------------------------
		
		#region best friend dialogue
		case "best friend":
		
		
			break;
		#endregion
		
		
	}
	
}