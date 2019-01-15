/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_paused))
{
	//btn_pos = 3
	prompt_active = true
	
}
else
{

	if(room_get_name(room) = "rm_startmenu")
	{
		room_goto(rm_lvl2_kupler)
		//room_goto(rm_quitButton)
		//game_end()
	}
	else 
	{
		room_goto(rm_startmenu)
	}

}
