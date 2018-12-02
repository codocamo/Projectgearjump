/// @description Insert description here
// You can write your code in this editor


player_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
player_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
player_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
player_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);

player_bbox_width = sprite_get_bbox_left(sprite_index) + sprite_get_bbox_right(sprite_index);
player_bbox_height = sprite_get_bbox_bottom(sprite_index) + sprite_get_bbox_top(sprite_index);

if(!instance_exists(obj_vfxmanager))
{
	instance_create_depth(0,0,0, obj_vfxmanager);
}

///Movement
//make switch request
var cooldown_limit = 5
var cooldown_reset_time = 30
var cooldown_timer = 50
if(room_get_name(room) = "rm_tutorial")
{
	var cancooldown = false
}
else
{ var cancooldown = true}

if(keyboard_check_pressed(ord("I")) && gear1limitunlock)
{
	
	gear1switchrequest = true;
	gear2switchrequest = false;
	gear3switchrequest = false;
	
	
	shake = 15;
	
	
	obj_soundcontroller.play_switch_snd_1 = true
	
	obj_vfxmanager.gear_switched = true
	obj_vfxmanager.switchxy = [x,y]
	
	
	//jumplimitunlock = false
	//obj_adhoc_scripts.stopparalax = true
	//alarm[4] = 1
	//max_velocity = [0, 0];
	
	//cooldown
	if(cancooldown) 
	{
		if (gear_change_count < cooldown_limit)
		{
			gear_change_count += 1
			alarm[5] = cooldown_reset_time 
		}
		else
		{
			start_cooldown = [true,true,false];
			gear1limitunlock = false; 
			gear2limitunlock = false; 
			gear3limitunlock = false; 
		//jumplimitunlock = false; 
		
		//alarm[6] = cooldown_timer
		}
	}
	
	current_gear = 1
}

if(keyboard_check_released(ord("I")))
{
	obj_soundcontroller.play_switch_snd_1 = false
}

else if(keyboard_check_pressed(ord("O")) && gear2limitunlock)
{
	gear2switchrequest = true;
	gear1switchrequest = false;
	gear3switchrequest = false;
	
	shake = 15;
	
	obj_soundcontroller.play_switch_snd_2 = true
	
	obj_vfxmanager.gear_switched = true
	obj_vfxmanager.switchxy = [x,y]
	
	
	//jumplimitunlock = false
	//obj_adhoc_scripts.stopparalax = true
	//alarm[4] = 1
	//max_velocity = [0, 0];
	
	
	
	//cooldown
	if(cancooldown) 
	{
		if (gear_change_count < cooldown_limit)
		{
			gear_change_count += 1
			alarm[5] = cooldown_reset_time 
		}
		else
		{
			start_cooldown = [true,true,false];
			gear1limitunlock = false; 
			gear2limitunlock = false; 
			gear3limitunlock = false; 
			//jumplimitunlock = false; 
		
			//alarm[6] = cooldown_timer
		}
	}
	current_gear = 2
}
if(keyboard_check_released(ord("O")))
{
	obj_soundcontroller.play_switch_snd_2 = false
}


else if(keyboard_check_pressed(ord("P")) && gear3limitunlock)
{
	gear3switchrequest = true;
	gear2switchrequest = false;
	gear1switchrequest = false;
	
	shake = 15;
	
	obj_soundcontroller.play_switch_snd_3 = true
	
	
	obj_vfxmanager.gear_switched = true
	obj_vfxmanager.switchxy = [x,y]
	
	//jumplimitunlock = false
	//obj_adhoc_scripts.stopparalax = true
	//alarm[4] = 1
	//max_velocity = [0, 0];
	
	
	//cooldown
	if(cancooldown) 
	{
		if (gear_change_count < cooldown_limit)
		{
			gear_change_count += 1
			alarm[5] = cooldown_reset_time 
		}
		else
		{
			start_cooldown = [true,true]; 
			gear1limitunlock = false; 
			gear2limitunlock = false; 
			gear3limitunlock = false; 
		}
	}
	current_gear = 3
}
if(keyboard_check_released(ord("P")))
{
	obj_soundcontroller.play_switch_snd_3 = false
}

//fulfil switch request
if(gear1switchrequest && goodtoswitch){gear1 = true; gear2 = false; gear3 = false}
else if(gear2switchrequest && goodtoswitch){gear2 = true; gear3 = false;gear1 = false}
else if(gear3switchrequest && goodtoswitch){gear3 = true; gear1 = false; gear2 = false}


//TODO : should probably take keyboard check out of jump script and put it here
if(gear1 == true && jumplimitunlock)
{
	gear1jump();
	
}
else if (gear2 == true && jumplimitunlock)
{
	gear2jump();	
}
else if (gear3 == true && jumplimitunlock)
{
	gear3jump();
	
}



//slide code
var t1slide = tilemap_get_at_pixel(tile_map, bbox_left, bbox_top - 48) & tile_index_mask; //will give you index of tile within tile sheet
var t2slide = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_top - 48) & tile_index_mask;
var t3slide = tilemap_get_at_pixel(tile_map, bbox_right, bbox_top - 48) & tile_index_mask;
if(keyboard_check_pressed(ord("S")) && pkupslidestate[0])
{
	inslide = true;
	jumplimitunlock = false;
	player_runspeed = [20, 0];
	max_velocity = [20,max_velocity[1]];
	
	velocity = [velocity[0], 0];
	player_jumpspeed = [0,0];
	world_gravity = [0,3];
	stopjumping = true;
	if(canstand == true)
	{
		alarm[2] = 20;
		canstand = false
	}
	
	obj_soundcontroller.play_slide = true;
	

}
if(inslide && canstand && (t1slide != 3 || t2slide != 3 || t3slide != 3))
{
	inslide = false;
	jumplimitunlock = true;
	max_velocity = [8,max_velocity[1]];
	player_runspeed = [1, 0];
	
	slidehelp = false;
	
	pkupslidestate[1] -=1; 
	if(pkupslidestate[1] <= 0)
	{
		pkupslidestate[0] = false
	}
}



//var direction_x = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * player_horizontal_speed; 
//var direction_y = (keyboard_check(vk_down) - keyboard_check(vk_up)) * player_horizontal_speed; 

//store out the xy value before geting updated for use later 


var directionxy = movescript()
var direction_x = player_horizontal_speed;
var direction_y = player_vertical_speed;


if(start_cooldown[0])
{
	directionxy[0] = x
	directionxy[1] = y
	image_speed = 0 
	if start_cooldown[1]
	{
		alarm[6] = 50; start_cooldown[1] = false;
	}
	
	gear1switchrequest = false
	gear2switchrequest = false
	gear3switchrequest = false
	
	current_gear = 0
}

if (gear1switchrequest = false && gear2switchrequest = false && gear3switchrequest = false)
{
	jumplimitunlock = false;
}
else if(!inslide)
{
	jumplimitunlock = true;
}
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
if (velocity[1] > 0) //downwards
{
	var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom) & tile_index_mask; //will give you index of tile within tile sheet
	var t2 = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_bottom) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom) & tile_index_mask;

	if(t1 = 3 || t2 = 3 || t3 = 3)
	{
		y = ((bbox_bottom & ~31) - 1) - player_bbox_bottom; //poop up
		velocity = [velocity[0], 0]
		
	}
	else if(t1 = 2 || t2 = 2 || t3 = 2)
	{
		player_dying = true;
		
	}
	else
	{
		on_the_come_down = true
	}
	
	if((instance_exists(obj_chkpt)) && (t1 = 1 || t2 = 1 || t3 = 1))
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
else //upwards
{
	var t1 = tilemap_get_at_pixel(tile_map, bbox_left, bbox_top) & tile_index_mask; //will give you index of tile within tile sheet
	var t2 = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_top) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_top) & tile_index_mask;

	if(t1 = 3 || t2 = 3 || t3 = 3)
	{
		y = ((bbox_top + 32) & ~31) - player_bbox_top; //pop down
		velocity = [velocity[0], 0];
		stopjumping = true;
		//world_gravity = 1.50;
	}
	
	if(t1 = 2 || t2 = 2 || t3 = 2)
	{
		player_dying = true;
	}
}



//x = x + direction_x;
x = directionxy[0]
if (velocity[0] > 0) //right
{
	
	var t1 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_top) & tile_index_mask; //will give you index of tile within tile sheet
	var t2 = tilemap_get_at_pixel(tile_map, bbox_right , bbox_top + (floor(player_bbox_height / 2))) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom) & tile_index_mask;

	if(t1 = 3 || t2 = 3 || t3 = 3)
	{
		x = ((bbox_right & ~31) - 1) - player_bbox_right;
		velocity = [0, velocity[1]]
		player_jumpspeed = [0,0];
		if(!mid_jump && !inslide){start_idle = true} else{start_idle = false}
		if(on_the_come_down || inslide){wall_touched = true}
	}
	else{start_idle = false}
	
	
	if(t1 = 2 || t2 = 2 || t3 = 2)
	{
		player_dying = true;
	}

	if((instance_exists(obj_chkpt)) && (t1 = 1 || t2 = 1 || t3 = 1))
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
	
	if(t1 = 4 || t2 = 4 || t3 = 4)
	{
		if(global.branch = -10 && room_get_name(room) == "rm_pre_tutorial")
		{loop_lvl[0] = false;}
		else {loop_lvl[0] = true;}
		
		room_loop();
		tile_4_locked = true;
	}
	else
	{
		tile_4_locked = false;
	}
	
	if(t1 = 6 || t2 = 6 || t3 = 6)
	{
		x = ((bbox_right & ~31) - 1) - player_bbox_right;
		velocity = [0, 0]
		world_gravity = [0,0]
		player_jumpspeed = [0,0];
		gear1limitunlock = false;
		gear2limitunlock = false;
		gear3limitunlock = false;
		jumplimitunlock = false;
		
		global.leveljustcompleted = room_get_name(room);
		endoflevel = true;
		if(alarm3set){alarm[3] = 50; alarm3set = false;}
		obj_soundcontroller.fade_music = true;
	}
	if(t1 = 7 || t2 = 7 || t3 = 7)
	{	
		prelimendoflevel = true;
		
		
		if( tile_7_locked = false)
		{
			endingcounter +=1;
			
			if(endingcounter < 3)
			{
				currentx = x
				currenty = y
			}
		}
		tile_7_locked = true;
	}
	else
	{
		tile_7_locked = false;
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



//show_message("player: "+ string(obj_player.y))





//sets level boundrys
if(global.branch != -10 && room_get_name(room) == "rm_pre_tutorial" )
{
	if(bbox_right + 1 >= 1074)
	{
		x = 20 
		playerout = true 
	}
	else{playerout = false}
}
//else if(bbox_right + 1  >= room_width)



level_entry()
background_movement();
level_exit()


camera_set_view_pos(view_camera[0], cameraposx + random_range(-shake, shake), cameraposy + random_range(-shake, shake));




//makes sure run animation plays between consecutive jumps
var t1a = tilemap_get_at_pixel(tile_map, bbox_left, bbox_bottom + 10) & tile_index_mask; //will give you index of tile within tile sheet
var t2a = tilemap_get_at_pixel(tile_map, bbox_left + (floor(player_bbox_width / 2)) , bbox_bottom + 10) & tile_index_mask;
var t3a = tilemap_get_at_pixel(tile_map, bbox_right, bbox_bottom + 10) & tile_index_mask;

if((mid_jump) &&((t1a != 0 && t1a != 1) || (t2a != 0 && t2a != 1) || (t3a != 0 && t3a != 1)))
{
	//stuff for adding in the squat after jump
	/*if(keyboard_check(ord("W")))
	{
		start_run_anim = true;	
		goodtoswitch = true
		mid_jump = false
	}
	else
	{
		goodtoswitch = true
		start_squat = true
		stopparalax = true
		alarm[4] = 20
		mid_jump = false
		max_velocity = [0,max_velocity[1]];
	}*/
	
	start_run_anim = true;	
	goodtoswitch = true;
	
	
}
else if(mid_jump){start_run_anim = false;goodtoswitch = false}


//show_debug_message("comedown " + string(velocity[1]) +" wall touched "+ string(wall_touched))

if (wall_touched)
{
	velocity[0] = 0
}