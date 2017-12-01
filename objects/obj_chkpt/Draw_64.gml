 /// @description Insert description here
// You can write your code in this editor



if(room_get_name(room) == "rm_tutorial")
{
	switch(chkpt)
	{
		case 7: obj_player.gear1limitunlock = true; break;
		case 10: draw_sprite(spr_jumpdef, 0, 700,200); obj_player.jumplimitunlock = true; obj_player.gear1limitunlock = true; break;
		case 11: obj_player.gear2limitunlock = true; break;
		case 16: draw_sprite(spr_jumpdef, 1, 700,200);  break; 
		case 18: obj_player.gear3limitunlock = true; break;
		case 21: draw_sprite(spr_jumpdef, 2, 700,200); break;
		case 25: obj_player.tumble = true; obj_player.burn = false; obj_player.fullburn = false; break;
		case 26: obj_player.tumble = false; obj_player.burn = true; obj_player.fullburn = false; break;
		case 27: obj_player.tumble = false; obj_player.burn = false; obj_player.fullburn = true; break;
		case 28: obj_player.cameramove = true; obj_player.player_y_at_trigger = obj_player.y ; chkpt = chkpt + 1; break;
		//default: draw_sprite(spr_jumpdef, 2, 700,200); break;
	}
} 