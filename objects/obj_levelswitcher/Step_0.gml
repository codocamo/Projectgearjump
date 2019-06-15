/// @description Insert description here
// You can write your code in this editor

//if branch +2 go to tutorial (depricated maybe)
if(global.branch = -2 && room_get_name(room) == "rm_pre_tutorial" && obj_player.playerlooped)
{
	
	global.spacelay_x = [layer_get_x(layer_get_id("Background_space_1")),layer_get_x(layer_get_id("Background_space_2")),layer_get_x(layer_get_id("Background_space_3")),layer_get_x(layer_get_id("Background_space_4"))]
	global.spacelay_y = [layer_get_y(layer_get_id("Background_space_1")),layer_get_y(layer_get_id("Background_space_2")),layer_get_y(layer_get_id("Background_space_3")),layer_get_y(layer_get_id("Background_space_4"))]
	obj_player.playerlooped = false;
	room_goto(rm_tutorial);
	
}
//if branch = null go to fallin lvl 1 (depricated maybe)
else if(global.branch = "null" && room_get_name(room) == "rm_pre_tutorial" && obj_player.playerout)
{
	room_goto(rm_fallinlvl1);
}
else if (goto[0])
{
	
	whiteflash = true;
	if(alarm0set){alarm[0] = 10; alarm0set = false;}
}



//Grab all the unlocked levels
if(grablevels)
{
	ini_open("levelmanager.ini")
	
	while(ini_section_exists("planet_"+string(planetiterator)+"_level_" + string(leveliterator)))
	{
		var unlocked = ini_read_string("planet_"+string(planetiterator)+"_level_" + string(leveliterator),"unlocked",false);
		if(unlocked = "true")
		{
			unlockedlevellist[leveliterator] = ini_read_string("planet_"+string(planetiterator)+"_level_" + string(leveliterator),"name","ini_level_error");
			leveliterator++;
		
			
			//check if the next one exists before hitting the while loop(so we can stay in the loop)
			if(!ini_section_exists("planet_"+string(planetiterator)+"_level_" + string(leveliterator)))
			{
				if(array_length_1d(unlockedlevellist) > 1)
				{
					unlockedplanetllist[planetiterator] = unlockedlevellist
				}
				leveliterator = 1
				planetiterator++
				unlockedlevellist = []
				
			}
		}
		else
		{
			if(array_length_1d(unlockedlevellist) > 1)
			{
				unlockedplanetllist[planetiterator] = unlockedlevellist
			}
			unlockedlevellist = []
			leveliterator = 1
			planetiterator++
		}
	
	}
	ini_close();
	
	grablevels = false;
	leveliterator = 1;
}