/// @description Insert description here
// You can write your code in this editor


if(global.branch = -2 && room_get_name(room) == "rm_pre_tutorial" && obj_player.playerout)
{
	room_goto(rm_tutorial);
}
else if(global.branch = -10 && room_get_name(room) == "rm_pre_tutorial" && obj_player.playerout)
{
	room_goto(rm_fallinlvl1);
}