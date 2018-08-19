/// @description Insert description here
// You can write your code in this editor


if(global.branch = -2 && room_get_name(room) == "rm_pre_tutorial" && obj_player.playerlooped)
{
	
	global.spacelay_x = [layer_get_x(layer_get_id("Background_space_1")),layer_get_x(layer_get_id("Background_space_2")),layer_get_x(layer_get_id("Background_space_3")),layer_get_x(layer_get_id("Background_space_4"))]
	global.spacelay_y = [layer_get_y(layer_get_id("Background_space_1")),layer_get_y(layer_get_id("Background_space_2")),layer_get_y(layer_get_id("Background_space_3")),layer_get_y(layer_get_id("Background_space_4"))]
	obj_player.playerlooped = false;
	room_goto(rm_tutorial);
	
}
else if(global.branch = -10 && room_get_name(room) == "rm_pre_tutorial" && obj_player.playerout)
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
	while(ini_section_exists("level_" + string(leveliterator)))
	{
		var unlocked = ini_read_string("level_" + string(leveliterator),"unlocked","ini_level_error");
		if(unlocked)
		{
			unlockedlevellist[leveliterator] = ini_read_string("level_" + string(leveliterator),"name","ini_level_error");
		}
		
		leveliterator++;	
	}
	ini_close();
	
	grablevels = false;
	leveliterator = 1;
	
	//show_message(unlockedlevellist[1])
}