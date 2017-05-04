var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom + 1) & tile_index_mask; //will give you index of tile within tile sheet
var t2 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom + 1) & tile_index_mask;

if(t1 != 0 || t2 != 0)
{
    mid_jump = false;
	//world_gravity = 0.75;
	
	if(keyboard_check(ord("W")))
	{
		jump_impulse = 15;
		max_jump_height = 50;
		world_gravity = 0;
		max_player_vertical_speed = 30;
		jump_horizontal_streangth = 5;
		max_player_horizontal_speed = 15;
	
		player_vertical_speed = player_vertical_speed - jump_impulse;
		player_horizontal_speed = player_horizontal_speed + jump_horizontal_streangth;
		mid_jump = true;
		y_at_jump = y;
	}
}
else
{
	if(mid_jump = true && y < (y_at_jump - max_jump_height))
	{
	
		//player_vertical_speed = player_vertical_speed * -1
		world_gravity = 1.50;
	}
}