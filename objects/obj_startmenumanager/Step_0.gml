/// @description Insert description here
// You can write your code in this editor
var layer_id  = layer_get_id("bkg_logo");
var back_id = layer_background_get_id(layer_id);
var sprite_id = layer_background_get_sprite(back_id)


if(inposition)
{
	incrementor += 1
	ypos = layer_get_y(layer_id) + (2 * sin(incrementor / 13))
	
	if(doonce)
	{obj_soundcontroller.level_music_switch = true; doonce = false; obj_soundcontroller.master_gain = 0; }
	
	if(!instance_exists(obj_startButton))
	{
		instance_create_depth(288,448,50, obj_startButton)
	}
	if(!instance_exists(obj_quitButton))
	{
		instance_create_depth(763,448,50, obj_quitButton)
	}
	if(!instance_exists(obj_optionsButton))
	{
		instance_create_depth(96,480,50, obj_optionsButton)
	}
}
else if(!inposition && ypos > 21)
{
	ypos = lerp(ypos, 20, 0.07)
}
else
{
	inposition = true
}

layer_y(layer_id, ypos)


