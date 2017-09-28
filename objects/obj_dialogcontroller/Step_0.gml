/// @description Insert description here
// You can write your code in this editor


//var next = false;
//if(keyboard_check_pressed(vk_anykey)) next = true;


// TODO: add check for change in obj_chkpt.chkpt in the if
if(room_get_name(room) == "rm_tutorial" && obj_chkpt.check && obj_chkpt.chkpt != obj_chkpt.chkpt)
{
	advance_dialog = true
	obj_chkpt.check = false
	show_message("hello")
}
else if(room_get_name(room) == "rm_tutorial" && obj_chkpt.check && obj_chkpt.chkpt == obj_chkpt.chkpt){show_message("not hello")}


get_dialog(advance_dialog);
