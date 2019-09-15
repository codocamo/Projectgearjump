 /// @description Insert description here
// You can write your code in this editor



if(room_get_name(room) == "rm_pre_tutorial" && global.branch = 3) 
{
	switch(obj_dialogcontroller.dialog_output_3)
	{
		case "tut_null_1": obj_player.gear1limitunlock = true; break;
		case "tut_null_2": obj_player.gear2limitunlock = true; break;
		case "tut_null_3": obj_player.gear3limitunlock = true; break;
	}
	
	switch(chkpt)
	{
		case 1: if(doonce){adhoc_dialog_advance();doonce = false}; break;
		case 2: draw_sprite(spr_jumpdef, 0, 700,200); obj_player.jumplimitunlock = true; break;
		case 3: if(doonce){obj_dialogcontroller.advance_dialog = true;doonce = false}; break;
		
		case 4: if(doonce){adhoc_dialog_advance();doonce = false}; break;
		case 5: draw_sprite(spr_jumpdef, 1, 700,200); obj_player.jumplimitunlock = true; break;
		case 6: if(doonce){adhoc_dialog_advance();doonce = false}; break;
		
		case 7: if(doonce){adhoc_dialog_advance();doonce = false}; break;
		case 8: draw_sprite(spr_jumpdef, 1, 700,200); obj_player.jumplimitunlock = true; break;
		case 9: if(doonce){adhoc_dialog_advance();doonce = false}; break;
		
		case 10: if(doonce){adhoc_dialog_advance();doonce = false}; obj_paused.canpause = false; obj_player.tumble = true; obj_player.burn = false; obj_player.fullburn = false; break;
		case 11: obj_player.tumble = false; obj_player.burn = true; obj_player.fullburn = false; break;
		case 12: obj_player.tumble = false; obj_player.burn = false; obj_player.fullburn = true; break;
		case 13: obj_levelswitcher.goto[1] = 1; obj_player.cameramove = true; obj_player.player_y_at_trigger = obj_player.y ; chkpt = chkpt + 1; obj_levelswitcher.drawplanet = true; break;

	}
	
} 
else if(room_get_name(room) == "rm_pre_tutorial" && global.branch = -10)
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