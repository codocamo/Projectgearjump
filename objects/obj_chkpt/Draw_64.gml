 /// @description Insert description here
// You can write your code in this editor

if(room_get_name(room) == "rm_tutorial")
{
	switch(chkpt)
	{
		case 6: obj_player.gear1limitunlock = true; break;
		case 9: draw_sprite(spr_jumpdef, 0, 700,200); obj_player.jumplimitunlock = true; obj_player.gear1limitunlock = true; break;
		case 11: draw_sprite(spr_jumpdef, 1, 700,200); break; 
		case 14: draw_sprite(spr_jumpdef, 2, 700,200); break;
		//default: draw_sprite(spr_jumpdef, 2, 700,200); break;
	}
} 