/// @description Insert description here
// You can write your code in this editor


//ini_section_exists()
if(!file_exists("levelmanager.ini"))
{
	ini_open("levelmanager.ini")
	ini_write_string("level_" + string(1), "name", "rm_lvl1_kupler")
	ini_write_string("level_" + string(1), "unlocked", "true")
	ini_close()
}
