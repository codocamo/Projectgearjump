//// @description grabs dialog and then displays it

if(fetch)
{
	//grabs dialog
	dialog_output_1 = "";
	dialog_output_2 = "";
	dialog_output_3 = "";
	dialog_branch = false;
	var dialog_data = dialog_lines[dialog_line];
	
	dialog_text_1 = dialog_data[0];
	dialog_text_2 = dialog_data[1];
	dialog_text_3 = dialog_data[2];
	dialog_option = dialog_data[3];
	dialog_continue = dialog_data[4];
	
	fetch = false;
}
else
{
	dialog_output_1 = dialog_text_1;
	dialog_output_2 = dialog_text_2;
	dialog_output_3 = dialog_text_3;
	dialog_branch = dialog_option;
}