////@description adds dialog depending on the room and branch
////@param level + branch

global.dialog = [];
global.dialog_line = 0;

//room_get_name(room) + "branch_" + string(global.branch)


//**************************PRE TUTORIAL DIALOG********************* 
if(argument[0] == "rm_lvl1_kupler_rm_pre_tutorial_branch_1")
{
	add_dialog("So Neil, You got issued a jump suit.","Continue...","",false, true); 
	add_dialog("How lucky!","Continue...","",false, true);
	add_dialog("Let's make sure you know how to use it.","Continue...","I don't think we need to do that.",true, false);
	//add_dialog("Why, Why must you be here to!", "", false, false);
}
else if(argument[0] == "rm_lvl1_kupler_rm_pre_tutorial_branch_2")
{
	add_dialog("........","Continue...","",false, true);
	add_dialog("I'm trying to talk to Neil here.","I know!","",false, true);
	add_dialog("Well must you always butt in when I speak?","I'm just moving the convo along.","",false, true);
	add_dialog("Could you do it quietly!?","*silence*","",false, true);
	add_dialog("-_-","???","",false, true);
	add_dialog("...Okay","*silence*","",false, true);
	add_dialog("Let's begin the refresher course on the suit.","*silence*","",false, true);
	add_dialog("Just don't interrupt us while I explain!","Okay, i'll disappear for now","",true, false);
	//add_dialog("Why, Why must you be here to!", "", false, false);
}
else if(argument[0] == "rm_lvl1_kupler_rm_pre_tutorial_branch_10")
{
	add_dialog("I'm trying to talk to Neil here.","I know!","",false, true);
	add_dialog("Well must you always butt in when I speak?","I'm just moving the convo along.","",false, true);
	add_dialog("Could you be less rude about it?","*silence*","",false, true);
	add_dialog("...That will do, I suppose.","*silence*","",false, true);
	add_dialog("Anyway, everything seems connected.","Yep, prepare to fall in.","",false, false, true);
}


//**************************TUTORIAL DIALOG*********************
else if(argument[0] == "rm_lvl1_kupler_rm_pre_tutorial_branch_3" || argument[0] == "rm_lvl1_kupler_rm_pre_tutorial_branch_20")
{
	add_dialog("So! back to you, Neil.","","",false, true); 
	add_dialog("Your suit can do a couple of things...","","",false, true);
	add_dialog("...but mainly you will be using it to alter your jump arc.","","",false, true);
	add_dialog("This is achieved by changing your suit's Jump Gear.","","",false, true);
	add_dialog("............","","",false, true);
	add_dialog("Just listen up, Neil.","","",false, true);
	add_dialog("I have a few definitions to teach you...","","",false, true);
	add_dialog("[I] activates Jump Gear 1.","","",false, true);
	add_dialog("Be good and please press [I].","null","tut_null_1",false, true);
	add_dialog("","null","null",false, true);

	add_dialog("Good!","","",false, true);
	add_dialog("Here comes the next one.","","",false, true);
	add_dialog("[O] activates Jump Gear 2.","","",false, true);
	add_dialog("Be a darling and press [O].","null","tut_null_2",false, true);

	add_dialog("","null","null",false, true);
	add_dialog("Excellent!","","",false, true);
	add_dialog("[P] activates Jump Gear 3.","","",false, true);
	add_dialog("This is the last one, press [P].","null","tut_null_3",false, true);

	add_dialog("","null","null",false, true);
	add_dialog("Well thats that!","","",false, true);
	add_dialog("Oh!","","",false, true)
	add_dialog("Don't switch gears too much.","","",false, true)
	add_dialog("I don't know what happens if you do.","","",false, true)
	add_dialog("...Goodbye","null","tut_null_4",false, true);
	add_dialog("","null","null",false, false, true);
	
	
}


//**************************LVL1 DIALOG*********************
else if(argument[0] == "rm_lvl1_kupler_rm_lvl1_kupler_branch_1")
{
	add_dialog("Explore!","","",false, true, false);
	add_dialog("Find the warp point.","","",false, true, false);
	add_dialog("Off you pop\n~OG","","",false, true, false);
}
else if(argument[0] == "rm_lvl2_kupler_rm_pre_tutorial_branch_1")
{
	add_dialog("Boobies", "Boobies!.", "", false, false, true);
}
else 
{
	add_dialog("correct dialog was not found", "fall in.", "", false, false, true);
}



if(argument[0] == "lol"+room_get_name(room) + "branch_" + string(global.branch))
{
	add_dialog("must you butt in after everything i say", true);
	add_dialog("cant you do that with less noise", true);
	add_dialog("Thank you!", true);
	add_dialog("Now lets make sure everyone knows how to use the suit", true);
	add_dialog("Excellent! Lets begin", true);
	add_dialog("...okay", false);
}



