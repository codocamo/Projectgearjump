//// @description grabs dialog and then displays it

if(fetch)
{
	//grabs dialog
	dialog_output_1 = "";
	dialog_output_2 = "";
	dialog_output_3 = "";
	dialog_branch = false;
	dialog_done = false;
	var dialog_data = dialog_lines[dialog_line];
	
	dialog_text_1 = dialog_data[0];
	dialog_text_2 = dialog_data[1];
	dialog_text_3 = dialog_data[2];
	dialog_option = dialog_data[3];
	dialog_continue = dialog_data[4];
	dialog_for_level_done = dialog_data[5]
	
	fetch = false;
}
else
{
	if(argument[0])
	{
		if(dialog_continue)
		{
			dialog_line += 1
			fetch = true;
		}
		else{instance_destroy()}
		advance_dialog = false
	}
	
	
	dialog_output_1 = dialog_text_1;
	dialog_output_2 = dialog_text_2;
	dialog_output_3 = dialog_text_3;
	dialog_branch = dialog_option;
	dialog_done = dialog_for_level_done;
}