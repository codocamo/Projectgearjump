var t0 = tilemap_get_at_pixel(tile_map, bbox_left - (floor(player_bbox_width / 2)), bbox_bottom + 1) & tile_index_mask; //will give you index of tile within tile sheet
var t1 = tilemap_get_at_pixel(tile_map, bbox_left , bbox_bottom + 1) & tile_index_mask;
var t2 = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_bottom+1) & tile_index_mask;
var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom + 1) & tile_index_mask;

//0 is no tile 
if((t0 = 3 || (t0 = 5 && !infaze)) || (t1 = 3 || (t1 = 5 && !infaze)) || (t2 = 3 || (t2 = 5&& !infaze)) || (t3 = 3 ||(t3 = 5&& !infaze))) //if grounded
{
	
//defaults go here
on_the_come_down = false;
	wall_touched = false;
	//mid_jump = false;
	player_runspeed = [1, 0];
	max_velocity = [8,max_velocity[1]];
	world_gravity = [0,2.5];
	//world_gravity = [0,3];
	stopjumping = false;
	
	if(keyboard_check(ord("W")) || keyboard_check(vk_space))
	{
		
		
		//stop then start jup sound
		obj_soundcontroller.stop_jump_snd = true;
		obj_soundcontroller.play_jump_snd_2 = true;
		
		player_jumpspeed = [0,-14]

		velocity[1] = player_jumpspeed[1]
		world_gravity = [0,0];
		max_jump_height = 20;
	
		mid_jump = true;
		y_at_jump = y;
		max_velocity = [15,max_velocity[1]];
		player_runspeed = [1, 0];
		
		alarm2set = true;
		airtime = false;
		
	}
}
else //else not grounded
{
	if(velocity[1] >= 0 && alarm2set)
	{
		alarm[0] = 3;
		airtime = true
		alarm2set = false;
		player_jumpspeed = [0,0];
		world_gravity = [0,0];
	}
	if(((mid_jump = true && y < (y_at_jump - max_jump_height)) && (!airtime)) || (stopjumping) || (mid_jump = false)) //on the way down(y reaches max jump height)
	{
		player_jumpspeed = [0,0];
		world_gravity = [0,2];
	}
}
