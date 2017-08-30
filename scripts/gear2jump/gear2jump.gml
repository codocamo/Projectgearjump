var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom + 1) & tile_index_mask; //will give you index of tile within tile sheet
var t2 = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_bottom) & tile_index_mask;
var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom + 1) & tile_index_mask;

//0 is no tile 
if((t1 != 0 && t1 != 1) || (t2 != 0 && t2 != 1) || (t3 != 0 && t3 != 1)) //if grounded
{
//defaults go here
    mid_jump = false;
	player_runspeed = [1, 0];
	max_velocity = [8,max_velocity[1]];
	world_gravity = [0,1];
	
	if(keyboard_check(ord("W")))
	{
		player_jumpspeed = [0,-14]

		velocity[1] = player_jumpspeed[1]
		world_gravity = [0,0];
		max_jump_height = 50;
	
		mid_jump = true;
		y_at_jump = y;
		max_velocity = [15,max_velocity[1]];
		player_runspeed = [2, 0]
		
	}
}
else
{
	if(mid_jump = true && y < (y_at_jump - max_jump_height))
	{
	
		player_jumpspeed = [0,0]
		world_gravity = [0,2];
	}
}
