/// @description Insert description here
// You can write your code in this editor

player_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
player_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
player_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
player_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

player_bbox_width = sprite_get_bbox_left(sprite_index) + sprite_get_bbox_right(sprite_index);
player_bbox_height = sprite_get_bbox_bottom(sprite_index) + sprite_get_bbox_top(sprite_index);



///Movement
if(keyboard_check(ord("I")) && gear1limitunlock)
{
	gear1 = true;
	gear2 = false;
	gear3 = false;
	
	
	shake = 10;
	
}
else if(keyboard_check(ord("O")) && gear2limitunlock)
{
	gear2 = true;
	gear1 = false;
	gear3 = false;
	
	shake = 10;
}
else if(keyboard_check(ord("P")) && gear3limitunlock)
{
	gear3 = true;
	gear2 = false;
	gear1 = false;
	
	shake = 10;
}


//TODO : should probably take keyboard check out of jump script and put it here
if(gear1 == true && jumplimitunlock)
{
	gear1jump();
	
}
if (gear2 == true && jumplimitunlock)
{
	gear2jump();	
}
if (gear3 == true && jumplimitunlock)
{
	gear3jump();
	
}







//var direction_x = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * player_horizontal_speed; 
//var direction_y = (keyboard_check(vk_down) - keyboard_check(vk_up)) * player_horizontal_speed; 
var directionxy = movescript()
var direction_x = player_horizontal_speed;
var direction_y = player_vertical_speed;

//if(player_vertical_speed < max_player_vertical_speed)
//{
//	player_vertical_speed = player_vertical_speed + world_gravity;
//}
//if(player_horizontal_speed > max_player_horizontal_speed)
//{
//	player_horizontal_speed = player_horizontal_speed;
//}

y = directionxy[1];
//y = y + direction_y;
if (directionxy[1] > 0) //downwards
{
	var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom) & tile_index_mask; //will give you index of tile within tile sheet
	var t2 = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_bottom) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom) & tile_index_mask;

	if(t1 = 3 || t2 = 3 || t3 = 3)
	{
		y = ((bbox_bottom & ~31) - 1) - player_bbox_bottom; //poop up
		velocity = [velocity[0], 0]
		
	}
	
	if(t1 = 2 || t2 = 2)
	{
		player_dying = true;
	}
	
	//if(t1 = 1 || t2 = 1)
	//{
	//	//object_helptext.help_check = true;
	//	//object_helptext.help_chkpt = object_helptext.help_chkpt + 1;
	//	object_giftext.help_check = true;
	//	object_giftext.help_chkpt = object_giftext.help_chkpt + 1;
	//}
	//else
	//{
	//	//object_helptext.help_check = false;
	//	object_giftext.help_check = false;
	//}
}
else //upwards
{
	var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_top) & tile_index_mask; //will give you index of tile within tile sheet
	var t2 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_top) & tile_index_mask;

	if(t1 = 3 || t2 = 3)
	{
		y = ((bbox_top + 32) & ~31) - player_bbox_top; //pop down
		player_vertical_speed = 0;
		//world_gravity = 1.50;
	}
	
	if(t1 = 2 || t2 = 2)
	{
		player_dying = true;
	}
}

//x = x + direction_x;
x = directionxy[0]
if (direction_x > 0) //right
{
	
	var t1 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_top) & tile_index_mask; //will give you index of tile within tile sheet
	var t2 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom) & tile_index_mask;

	if(t1 = 3 || t2 = 3)
	{
		x = ((bbox_right & ~31) - 1) - player_bbox_right;
		velocity = [0, velocity[1]]
	}
	
	if(t1 = 2 || t2 = 2)
	{
		player_dying = true;
	}

	if((instance_exists(obj_chkpt)) && (t1 = 1 || t2 = 1))
	{
		//object_helptext.help_check = true;
		//object_helptext.help_chkpt = object_helptext.help_chkpt + 1;
		obj_chkpt.check = true;
		//if(obj_chkpt.chkpt != obj_chkpt.chkpt) {obj_chkpt.chkpt = obj_chkpt.chkpt + 1;}
		
	}
	else if(instance_exists(obj_chkpt))
	{
		//object_helptext.help_check = false;
		obj_chkpt.check = false;
	}
	
}
else //left
{
	var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_top) & tile_index_mask; //will give you index of tile within tile sheet
	var t2 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom) & tile_index_mask;

	if(t1 = 3 || t2 = 3)
	{
		x = ((bbox_left + 32) & ~31) - player_bbox_left;
	}
	
	if(t1 = 2 || t2 = 2)
	{
		player_dying = true;
	}
}


//ADHOC STUFFFFFF!!!!!!!----------------------------------------------------------------




if(global.branch != -10 && room_get_name(room) == "rm_pre_tutorial" )
{
	if(bbox_right + 1 >= 1074)
	{
		x = 20 
		playerout = true 
	}
	else{playerout = false}
}
else if(bbox_right + 1  >= room_width)
{
	x = 20
	//playerout = true 
}



//camera_set_view_pos(view_camera[0], (x - 200) + random_range(-shake, shake) , y - ((view_hport[0] / 2)+ 100 )+ random_range(-shake, shake));



level_entry()

camera_set_view_pos(view_camera[0], cameraposx + random_range(-shake, shake), cameraposy + random_range(-shake, shake));


//view_set_xport(view_xport[0], 0);
//view_set_yport(view_yport[0], 0);
	


//image_speed = 0.1;

//yo = sprite_index

//sprite_collision_mask(sprite_index, true, 0,0,0,0,0,1,0)
