/// @description Insert description here
// You can write your code in this editor


//ini_section_exists()
file_delete("levelmanager.ini")
if(!file_exists("levelmanager.ini"))
{
	ini_open("levelmanager.ini")
	ini_write_string("planet_"+ string(1)+"_level_" + string(1), "name", "rm_lvl1_kupler")
	ini_write_string("planet_"+ string(1)+"_level_" + string(1), "unlocked", "true")

	
	ini_write_string("planet_"+ string(1)+"_level_" + string(2), "name", "rm_lvl2_kupler")
	ini_write_string("planet_"+ string(1)+"_level_" + string(2), "unlocked", "false")

	
	
	ini_write_string("planet_"+ string(2)+"_level_" + string(1), "name", "rm_lvl1_pluto")
	ini_write_string("planet_"+ string(2)+"_level_" + string(1), "unlocked", "false")

	
	ini_write_string("planet_"+ string(2)+"_level_" + string(2), "name", "rm_lvl2_pluto")
	ini_write_string("planet_"+ string(2)+"_level_" + string(2), "unlocked", "false")

	ini_close()
}

ini_open("levelmanager.ini")
global.level_just_unlocked = ini_read_string("misc", "last_unlocked", "rm_lvl1_kupler")
ini_close()

global.unlock_level_list = ds_map_create()
ds_map_add(global.unlock_level_list, "rm_lvl1_kupler", "planet_1_level_2");
//ds_map_add(global.unlock_level_list, "rm_lvl2_kupler", "planet_1_level_2");
//ds_map_add(global.unlock_level_list, "rm_lvl1_kupler", "planet_1_level_2");

