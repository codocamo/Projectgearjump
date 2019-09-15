if(obj_player.loop_lvl[0] && !obj_player.tile_4_locked)
{
	
	if(obj_player.loop_xpos[0] < 0)
	{
		obj_player.loop_xpos[0] = obj_player.x;
		obj_player.loop_lvl[0] = false;
		show_debug_message("loop xpos [0]: " + string(obj_player.loop_xpos[0]))
	}
	else
	{
		obj_player.loop_xpos[1] = obj_player.x;
		obj_player.loop_lvl[1] = obj_player.x
		obj_player.cam_cock = false
		obj_player.x = room_loop_start_pos();
		//x = 220


		obj_player.loop_lvl[0] = false
		obj_player.loop_xpos[1] = -1
		obj_player.loop_xpos[0] = -1
		obj_player.playerlooped = true;
		show_debug_message("loop xpos [0]: " + string(obj_player.loop_xpos[0]))
		
	}
	
}