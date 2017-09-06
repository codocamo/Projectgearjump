//// @description adds all character dialog and metadata to the dialog array. 
//// @question should i make the dialog array a global variable and have all character dialog pool in to it
//// @param dialog_text 
//// @param dialog_continues?

var dialog_part = [];
var dialog_text = "";		if(argument_count >= 1) dialog_text = argument[0];
var dialog_continue = false;   if(argument_count >= 2) dialog_continue = argument[1];

dialog_part[0] = dialog_text;
dialog_part[1] = dialog_continue;

dialog[dialog_line] = dialog_part;
dialog_line +=1;


start_dialog(self, 0)