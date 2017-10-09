var characterclampy = 0;


if (cameramove)
{
	cameraposy += (y - ((view_hport[0] / 2) + 100)) * -1;
	cameraposx = x - 200;
	shake = shake * 0;
	
}
else
{
	cameraposx = x - 200;
	cameraposy = y - ((view_hport[0] / 2) + 100);
	shake = shake * 0.12;
}


if(cameramove && y <= characterclampy)
{
	velocity = [velocity[0], 0];
	alarm[1] = 10000;
}


if(whiteflash)
{
	draw_sprite(spr_flashwhite, -1, 0,0);
	alarm[0] = 8;
	
}