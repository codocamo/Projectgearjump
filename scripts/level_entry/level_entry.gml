//var characterclampy = 2700;
//var characterclampy = 2200;
var characterclampy = player_y_at_trigger + 1000;


//last chkpt sets cameramove top true. once true start the camera ofset
if (cameramove)
{
	camera_offest_counter +=  5
	
	cameraposy = (y - ((view_hport[0] / 2) + 100)) + clamp(camera_offest_counter, 0 , 200);
	cameraposx = x - 200;
	shake = shake * 0;
	
}
else
{
	cameraposx = x - 200;
	cameraposy = y - ((view_hport[0] / 2) + 100) + clamp(camera_offest_counter, 0 , 200);
	shake = shake * 0.12;
}

//when clamp is reached kill movement and set alarm and draw level details
if(cameramove && y >= characterclampy)
{
	player_runspeed = [0, 0];
	world_gravity = [0,0];
	velocity = [0, 0];
	
	if(alarm1set)
	{
		alarm[1] = 250;
		alarm1set = false;
		obj_levelswitcher.drawleveldetails = true;
	}
}
else if(advancetonextlvl && y >= characterclampy)
{
	player_runspeed = [max_velocity[0], 0];
	world_gravity = [0,max_velocity[1]];
}



if(advancetonextlvl && y >= characterclampy + 100)
{
	obj_levelswitcher.goto[0] = true;
	obj_levelswitcher.goto[1] = rm_lvl1_kupler;
}