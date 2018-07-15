/// @description Insert description here
// You can write your code in this editor
obj_soundcontroller.level_music_switch = true;


if(room_get_name(room) = "rm_startmenu")
{
	//room_goto(rm_lvl1_kupler)
	room_goto(rm_quitButton)
	//game_end()
}
else 
{
	room_goto(rm_startmenu)
}