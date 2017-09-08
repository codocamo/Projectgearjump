global.dialog = [];
global.dialog_line = 0;

//room_get_name(room) + "branch_" + string(global.branch)

if(argument[0] == "rm_tutorial_branch_1")
{
	add_dialog("So", true);
	add_dialog("You got issued a jump suit", true); 
	add_dialog("How lucky! lets make sure you know how to use it", true);
	add_dialog("Why, Why must you be here to!", false);
}

if(argument[0] == room_get_name(room) + "branch_" + string(global.branch))
{
	add_dialog("must you butt in after everything i say", true);
	add_dialog("cant you do that with less noise", true);
	add_dialog("Thank you!", true);
	add_dialog("Now lets make sure everyone knows how to use the suit", true);
	add_dialog("Excellent! Lets begin", true);
	add_dialog("...okay", false);
}



