/// @description Insert description here
// You can write your code in this editor
if(check && chkpt != chkpt_ftr)
{
	chkpt = chkpt_ftr;
	if(room_get_name(room) == "rm_tutorial" ){obj_dialogcontroller.advance_dialog = true;}
	
}
else if(!check && chkpt == chkpt_ftr)
{
	chkpt_ftr = chkpt_ftr + 1
}