/// @description Insert description here
// You can write your code in this editor
dialog = [];
dialog_line = 0;


d_start_text = 
add_dialog("Well well well if it isnt the one with the suit but no answers", true, spr_avatar, true);
add_dialog("how long does it take for one to become so conceited?", false, spr_avatar, false);

d_second_text = 
add_dialog("...... this text is totaly unrelated to the previouse text", false, spr_avatar, true);


show_message(dialog);

start_dialog(self, d_second_text)