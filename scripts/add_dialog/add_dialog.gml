//// @description adds all character dialog and metadata to the dialog array. 
//// @question should i make the dialog array a global variable and have all character dialog pool in to it
//// @param dialog_text_1
//// @param dialog_text_2
//// @param dialog_text_3
//// @param advance_branch?
//// @param dialog_continues?
//// @param dialog_for_level_done?

var dialog_part = [];
var dialog_text_1 = "";		if(argument_count >= 1) dialog_text_1 = argument[0];
var dialog_text_2 = "";		if(argument_count >= 2) dialog_text_2 = argument[1];
var dialog_text_3 = "";		if(argument_count >= 3) dialog_text_3 = argument[2];
var dialog_option = false;		if(argument_count >= 4) dialog_option = argument[3];
var dialog_continue = false;   if(argument_count >= 5) dialog_continue = argument[4];
var dialog_for_level_done = false if(argument_count >= 6) dialog_for_level_done = argument[5];

dialog_part[0] = dialog_text_1;
dialog_part[1] = dialog_text_2;
dialog_part[2] = dialog_text_3;
dialog_part[3] = dialog_option;
dialog_part[4] = dialog_continue;
dialog_part[5] = dialog_for_level_done;

global.dialog[global.dialog_line] = dialog_part;
global.dialog_line += 1;

//return dialog_line - 1