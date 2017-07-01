var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom + 1) & tile_index_mask; //will give you index of tile within tile sheet
var t2 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom + 1) & tile_index_mask;

if((t1 != 0 && t1 != 1) || (t2 != 0 && t2 != 1))
{
    mid_jump = false;
	//world_gravity = 0.75;
	
	if(keyboard_check(ord("W")))
	{
		jump_impulse = 21;
		max_jump_height = 100;
		world_gravity = 0;
		max_player_vertical_speed = 30;
		
		player_vertical_speed = player_vertical_speed - jump_impulse;
		mid_jump = true;
		y_at_jump = y;
	}
}
else
{
	if(mid_jump = true && y < (y_at_jump - max_jump_height))
	{
	
		//player_vertical_speed = player_vertical_speed * -1
		world_gravity = 2.00;
	}
}