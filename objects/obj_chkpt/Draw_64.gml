 /// @description Insert description here
// You can write your code in this editor



if(room_get_name(room) == "rm_tutorial")
{
	switch(chkpt)
	{
		case 7: obj_player.gear1limitunlock = true; break;
		case 10: draw_sprite(spr_jumpdef, 0, 700,200); obj_player.jumplimitunlock = true; obj_player.gear1limitunlock = true; break;
		case 13: obj_player.gear2limitunlock = true; break;
		case 16: draw_sprite(spr_jumpdef, 1, 700,200);  break; 
		case 18: obj_player.gear3limitunlock = true; break;
		case 21: draw_sprite(spr_jumpdef, 2, 700,200); break;
		case 28: obj_paused.canpause = false; obj_player.tumble = true; obj_player.burn = false; obj_player.fullburn = false; break;
		case 29: obj_player.tumble = false; obj_player.burn = true; obj_player.fullburn = false; break;
		case 30: obj_player.tumble = false; obj_player.burn = false; obj_player.fullburn = true; break;
		case 31: obj_levelswitcher.goto[1] = 1; obj_levelswitcher.drawplanet = true; obj_player.cameramove = true; obj_player.player_y_at_trigger = obj_player.y ; chkpt = chkpt + 1; break;
		//default: draw_sobj_levelswitcher.drawplanet = true; prite(spr_jumpdef, 2, 700,200); break;
	}
	
} 