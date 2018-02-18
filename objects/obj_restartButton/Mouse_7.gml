/// @description Insert description here
// You can write your code in this editor
//room_goto_next()
switch(global.leveljustcompleted)
{
	case "rm_lvl1_kupler": room_goto(rm_lvl1_kupler); break;
	default:  room_goto(rm_startmenu); break;
}
obj_soundcontroller.level_music_switch = true

