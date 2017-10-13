//var characterclampy = 2700;
var characterclampy = 2200;

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


if(cameramove && y >= characterclampy)
{
	player_runspeed = [0, 0];
	world_gravity = [0,0];
	velocity = [0, 0];
	
	if(alarm1set)
	{
		alarm[1] = 50;
		alarm1set = false;
	}
}
else if(advancetonextlvl && y >= characterclampy)
{
	player_runspeed = [max_velocity[0], 0];
	world_gravity = [0,max_velocity[1]];
}



if(advancetonextlvl && y >= characterclampy + 100)
{
	obj_levelswitcher.gotolvl1 = true;
}