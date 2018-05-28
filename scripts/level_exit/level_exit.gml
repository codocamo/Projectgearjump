if(endingcounter >= 1)
{
	obj_endcard.visible=true
	obj_endparticles.startstreaming = true;
	
}
else
{
	obj_endcard.visible=false
	obj_endparticles.startstreaming = false;
}

if(endingcounter >= 2)
{
	cameraposx = currentx - 200;
	cameraposy = y - ((view_hport[0] / 2) + 100) + clamp(camera_offest_counter, 0 , 200);
	shake = shake * 0;
}
if (endingcounter = 3)
{
	part_type_speed(global.pt_Effect1, 1.50, 1.50, 0, 0);
    part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
	obj_endparticles.startstreaming = true;
}