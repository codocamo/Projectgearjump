/// @description Insert description here
// You can write your code in this editor

whiteflash = false;
goto[0] = false;
unlockedlevellist[0] = "rm_endoflevel"
unlockedlevellist[1] = "rm_lvl2_kupler" //should always be in the array, sheilds from breaking HTML5


switch(unlockedlevellist[goto[1]])
{
	case "rm_lvl1_kupler": room_goto(rm_lvl1_kupler); break;
	case "rm_endoflevel": room_goto(rm_endoflevel); break;
}
obj_soundcontroller.level_music_switch = true;



