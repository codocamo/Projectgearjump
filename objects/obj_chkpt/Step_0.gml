/// @description Insert description here
// You can write your code in this editor
if(check && chkpt < chkpt_ftr )
{
	chkpt = chkpt_ftr;
	if(instance_exists(obj_dialogcontroller))
	{
		//if(room_get_name(room) == "rm_pre_tutorial" ){obj_dialogcontroller.advance_dialog = true;}
		//if(room_get_name(room) == "rm_tutorial" ){obj_dialogcontroller.advance_dialog = true;}
	}
	lvlhelptext()
	obj_chkpt.doonce = true
	//show_message("in check")
}
else if(!check && chkpt == chkpt_ftr)
{
	chkpt_ftr = chkpt_ftr + 1;
	//show_message("out check")
	
}


if(room_get_name(room) == "000rm_pre_tutorial")//old pre tutorial
{

	switch(chkpt)
	{
		case 1: /*obj_ornamentmanager.start_ornaments = true;*/ obj_paused.canpause = false; obj_player.tumble = true; obj_player.burn = false; obj_player.fullburn = false; break;
		case 2: obj_player.tumble = false; obj_player.burn = true; obj_player.fullburn = false; break;
		case 3: obj_player.tumble = false; obj_player.burn = false; obj_player.fullburn = true; break;
		case 4: obj_levelswitcher.goto[1] = 1; obj_player.cameramove = true; obj_player.player_y_at_trigger = obj_player.y ; chkpt = chkpt + 1; obj_levelswitcher.drawplanet = true; break;
		//default: draw_sprite(spr_jumpdef, 2, 700,200); break;
	}
} 


