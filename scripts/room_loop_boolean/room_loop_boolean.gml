

//show_debug_message("global branc: " +string(global.branch) +"branc store: "+ string(branch_store))
if(global.branch = -10 && room_get_name(room) == "rm_pre_tutorial")
{
	return true
}


if(global.branch >= 3) //&&  in_tutorial_mode
{
	//show_debug_message("LINE NUMBER: " + string(obj_dialogcontroller.dialog_line))
	//show_debug_message("loop xpos [0]: " + string(obj_player.loop_xpos[0]))
	
	
	if(obj_player.gear1 && obj_dialogcontroller.dialog_output_2 = "null" && obj_dialogcontroller.dialog_output_3 = "tut_null_1") 
	{
		//move this to  chkpt make a variable
		//obj_dialogcontroller.advance_dialog = true
		
		return true
	}
	else if(obj_player.gear2 && obj_dialogcontroller.dialog_output_2 = "null" && obj_dialogcontroller.dialog_output_3 = "tut_null_2") 
	{
		return true
	}
	else if(obj_player.gear3 && obj_dialogcontroller.dialog_output_2 = "null" && obj_dialogcontroller.dialog_output_3 = "tut_null_3") 
	{

		return true
	}
	else if(obj_dialogcontroller.dialog_output_2 = "null" && obj_dialogcontroller.dialog_output_3 = "tut_null_4")
	{

		return true
	}
	else return false
	
}



//old code pre Flamin-Go figure
/*
if(room_get_name(room) = "rm_pre_tutorial" && branch_store = global.branch && global.branch > 3)
{
	
	branch_store = global.branch + 1
	return true
}
if (branch_store <= global.branch)
{
	branch_store = global.branch + 1
}
else
{
	return false
}


