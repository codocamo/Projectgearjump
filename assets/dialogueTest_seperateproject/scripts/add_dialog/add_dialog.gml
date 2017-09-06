var dialog_part = [];				
var dialog_text = "";				if(argument_count >= 1) dialog_text = argument[0];
var dialog_continue = false;		if(argument_count >= 2) dialog_continue = argument[1];
var dialog_avatar = "";				if(argument_count >= 3) dialog_avatar = argument[2];
var dialog_left_facing = true;		if(argument_count >= 4) dialog_left_facing = argument[3];



dialog_part[0] = dialog_text
dialog_part[1] = dialog_continue
dialog_part[2] = dialog_avatar
dialog_part[3] = dialog_left_facing

dialog[dialog_line] = dialog_part;
dialog_line += 1;


return dialog_line - 1;