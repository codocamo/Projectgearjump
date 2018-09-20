if(obj_player.loop_lvl[0] && !obj_player.tile_4_locked)
{
	if(obj_player.loop_xpos[0] < 0)
	{
		obj_player.loop_xpos[0] = obj_player.x;
		obj_player.loop_lvl[0] = false;
	}
	else
	{
		obj_player.loop_xpos[1] = obj_player.x;
		obj_player.loop_lvl[1] = obj_player.x
		obj_player.cam_cock = false
		obj_player.x = (obj_player.loop_xpos[1] - obj_player.loop_xpos[0]) - 32
		//x = 220


		obj_player.loop_lvl[0] = false
		obj_player.loop_xpos[1] = -1
		obj_player.loop_xpos[0] = -1
		obj_player.playerlooped = true;
		
	}
	
}