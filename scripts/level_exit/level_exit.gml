
	if(endingcounter >= 1)
	{
		
		if (!instance_exists(obj_endcard))
		{
			instance_create_depth(obj_player.x + (26*32) /*+ (28*32)*/, obj_player.y, 10,obj_endcard)
		}
		
	
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
		part_type_life(global.pt_Effect1, 10, 10);
		part_type_speed(global.pt_Effect1, 50, 50, 0, 0);
		part_type_direction(global.pt_Effect1, 360, 360, 0, 130);
		
		with(obj_endparticles){part_emitter_stream(ps, global.pe_Effect1, global.pt_Effect1, 5);}
	}

