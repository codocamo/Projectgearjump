var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom + 1) & tile_index_mask; //will give you index of tile within tile sheet
var t2 = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_bottom+1) & tile_index_mask;
var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom + 1) & tile_index_mask;


if(keyboard_check_pressed(ord("W")) ||keyboard_check_pressed(vk_space))
	{
		
		show_debug_message(string(t1) +" "+ string(t2) +" "+ string(t3))}
		
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
	if(keyboard_check_pressed(ord("W")) ||keyboard_check_pressed(vk_space))
	{
		obj_soundcontroller.stop_jump_snd = true;
		obj_soundcontroller.play_jump_snd_1 = true;
		
		player_jumpspeed = [0,-13]

		velocity[1] = player_jumpspeed[1]
		world_gravity = [0,0];
		//max_jump_height = 50;
		max_jump_height = 80;
	
		mid_jump = true;
		y_at_jump = y;
		
		max_velocity = [11,max_velocity[1]];
		
	}
}
else
{
	
	if((mid_jump = true && y < (y_at_jump - max_jump_height)) || (stopjumping) || (mid_jump = false) || (keyboard_check_released(ord("W"))) || (keyboard_check_released(vk_space)))
	{
		player_jumpspeed = [0,0];
		world_gravity = [0,3];
	}
	
}


