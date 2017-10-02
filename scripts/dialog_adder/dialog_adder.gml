////@description adds dialog depending on the room and branch
////@param level + branch

global.dialog = [];
global.dialog_line = 0;

//room_get_name(room) + "branch_" + string(global.branch)

if(argument[0] == "rm_pre_tutorial_branch_1")
{
	add_dialog("So, You got issued a jump suit","continue..","",false, true); 
	add_dialog("How lucky!","continue..","",false, true);
	add_dialog("lets make sure you know how to use it","continue..","i dont think we need to do that",true, false);
	//add_dialog("Why, Why must you be here to!", "", false, false);
}
else if(argument[0] == "rm_pre_tutorial_branch_2")
{
	add_dialog("........","continue..","",false, true); 
	add_dialog("Must you always butt in whe i speak","im just moving the convo along","",false, true);
	add_dialog("could you do it quietly!?","....","",false, true);
	add_dialog("Oh,Thank you!","....","",false, true);
	add_dialog("Lets begin the refresher course on the suit","....","",false, false, true);
	//add_dialog("Why, Why must you be here to!", "", false, false);
}
else if(argument[0] == "rm_pre_tutorial_branch_10")
{
	add_dialog("........","continue..","",false, true); 
	add_dialog("Must you always butt in whe i speak","im just moving us along, quickly","",false, true);
	add_dialog("could you do it quietly!?","....","",false, true);
	add_dialog("...Thanks","....","",false, true);
	add_dialog("Anyway, its about that time","....","",false, true);
	add_dialog("I think the worm holes have connected","yep, prepare to fall in","",false, false, true);
}


if(argument[0] == "rm_tutorial_branch_1")
{
	add_dialog("Your suit can do a couple things!","","",false, true); 
	add_dialog("But mainly you will be using it to alter your jump arch","","",false, true);
	add_dialog("This is achieved by changing your suits Jump Gear","","",false, true);
	add_dialog("So listen up Neil","","",false, true);
	add_dialog("I have a few definitions to teach you","","",false, true);
	add_dialog("Now if you dont mind please press 'I'","","",false, true);
	add_dialog("This activates Jump Gear 1","","",false, true);
	add_dialog("","","",false, true);
	add_dialog("","","",false, true);
	add_dialog("Good here comes the next one","","",false, true);
	add_dialog("","","",false, true);
	add_dialog("","","",false, true);
	add_dialog("Test End! thank you","","",false, false);
	//add_dialog("Why, Why must you be here to!", "", false, false);
}
else 
{
	add_dialog("correct dialog was not found", "", "", false, false);
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



