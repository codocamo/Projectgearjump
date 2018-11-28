if ( instance_exists(obj_endcard)&& instance_exists(obj_endparticles) && instance_exists(obj_vfxmanager))
{

	if(endingcounter >= 1)
	{
		obj_endcard.visible=true
		with(obj_endparticles){startstreaming = true;}
	
	}
	else
	{
		obj_endcard.visible = false
		with(obj_endparticles){startstreaming = false;}
	}

	if(endingcounter >= 2)
	{
		cameraposx = currentx - 200;
		cameraposy = y - ((view_hport[0] / 2) + 100) + clamp(camera_offest_counter, 0 , 200);
		shake = shake * 0;
		obj_adhoc_scripts.stopparalax = true
		
		
		
	}
	
	if(endingcounter >= 3)
	{
		obj_vfxmanager.stop_all_text = true
	}
	
	if (endingcounter = 4)
	{
		part_type_speed(global.pt_Effect1, 1.50, 1.50, 0, 0);
	    part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
		with(obj_endparticles){startstreaming = true;}
	}

}