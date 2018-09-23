//velocity = [0, 0];
//acceleration = [0,0]; 
//max_velocity = [8,20];

//player_runspeed = [0.05, 0]
//player_jumpspeed = [0, 0]

var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom + 1) & tile_index_mask; //will give you index of tile within tile sheet
var t2 = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_bottom) & tile_index_mask;
var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom + 1) & tile_index_mask;

if((t1 = 3 || t1 = 5) || (t2 = 3 || t2 = 5) || (t3 = 3 ||t3 = 5))
{
	on_the_come_down = false;
	wall_touched = false;
    mid_jump = false;
	world_gravity = [0,2.5];
	//world_gravity = [0,3];
	player_runspeed = [1, 0];
	max_velocity = [8,max_velocity[1]];
	stopjumping = false;
	player_runspeed = [1, 0];
	
	
	if(keyboard_check(ord("W")))
	{
		
		obj_soundcontroller.stop_jump_snd = true;
		obj_soundcontroller.play_jump_snd_3 = true;
		
		player_jumpspeed = [0,-17]

		velocity[1] = player_jumpspeed[1]
		world_gravity = [0,0];
		max_jump_height = 130;
	
	max_velocity = [7.5,max_velocity[1]];
	//player_runspeed = [10,0]
		mid_jump = true;
		y_at_jump = y;
	}
}
else
{

	if((mid_jump = true && y < (y_at_jump - max_jump_height)) || (stopjumping) || (mid_jump = false))
	{
		player_jumpspeed = [0,0];
		world_gravity = [0,2.7];
		//world_gravity = [0,3];
		//show_message("jump stopped apparently in norm")
	}
	
}