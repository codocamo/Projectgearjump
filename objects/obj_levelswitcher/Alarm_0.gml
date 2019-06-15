/// @description Insert description here
// You can write your code in this editor

whiteflash = false;
goto[0] = false;


if(room_get_name(room) != "rm_pre_tutorial" && room_get_name(room) != "rm_tutorial")
{
	room_goto(rm_endoflevel);
}
else
{
	var levels = unlockedplanetllist[planetiterator]
	
	switch(levels[leveliterator])
	{
		case "rm_lvl1_kupler": room_goto(rm_lvl1_kupler); break;
		default: room_goto(rm_endoflevel); break;
	
	}
}
obj_soundcontroller.level_music_switch = true;


