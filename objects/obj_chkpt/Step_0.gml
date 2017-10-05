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



if(room_get_name(room) == "rm_pre_tutorial")
{
	switch(chkpt)
	{
		case 1: obj_player.cameramove = true;obj_player.tumble = false; obj_player.burn = false; obj_player.fullburn = false; break;
		case 2: obj_player.tumble = false; obj_player.burn = true; obj_player.fullburn = false; break;
		case 3: obj_player.tumble = false; obj_player.burn = false; obj_player.fullburn = true; break;
		//default: draw_sprite(spr_jumpdef, 2, 700,200); break;
	}
} 