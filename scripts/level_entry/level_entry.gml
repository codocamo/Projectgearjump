//var characterclampy = 2700;
var characterclampy = 2200;

if (cameramove)
{
	camera_offest_counter +=  5
	
	cameraposy = (y - ((view_hport[0] / 2) + 100)) + clamp(camera_offest_counter, 0 , 200); ;
	cameraposx = x - 200;
	shake = shake * 0;
	
}
else
{
	cameraposx = x - 200;
	cameraposy = y - ((view_hport[0] / 2) + 100);
	shake = shake * 0.12;
}


if(cameramove && y >= characterclampy)
{
	player_runspeed = [0, 0];
	world_gravity = [0,0];
	velocity = [0, 0];
	alarm[1] = 100;
}
else
{
	player_runspeed = [1, 0];
	world_gravity = [0,1];
}

//defaults
//player_runspeed = [1, 0];
//world_gravity = [0,1];


if(whiteflash)
{
	draw_sprite(spr_flashwhite, -1, 0,0);
	alarm[0] = 8;
	
}