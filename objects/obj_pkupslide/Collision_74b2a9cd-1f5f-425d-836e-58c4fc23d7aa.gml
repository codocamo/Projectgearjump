/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_released(ord("D")))
{
	obj_player.pkupslidestate[0] = true
	obj_player.pkupslidestate[1] = 3
	obj_soundcontroller.play_slidepowerup = true

}
