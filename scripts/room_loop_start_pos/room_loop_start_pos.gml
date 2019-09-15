switch(room_get_name(room)){
	case "rm_pre_tutorial": 
	{
		if(global.branch = 3 && obj_player.tut_position)
		{
			obj_player.tut_position = false
			return (obj_player.loop_xpos[1] - obj_player.loop_xpos[0]) - 32;
		}
		else
		{
			var startx = level_start_pos()
			return obj_player.loop_xpos[1] -  400//startx[0]
			
		}
	}; 
	break;
}

