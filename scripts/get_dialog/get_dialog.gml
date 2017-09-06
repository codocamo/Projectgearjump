//// @description grabs dialog and then displays it

if(fetch)
{
	//grabs dialog
	dialog_output = "";
	var dialog_data = dialog_lines[dialog_line];
	
	dialog_text = dialog_data[0];
	dialog_continue = dialog_data[1];
	
	fetch = false;
}
else
{
	dialog_output = dialog_text
}