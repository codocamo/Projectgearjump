/// @description Insert description here
// You can write your code in this editor

if(obj_controlsButton.showcontrols)
{
	var startxy = [obj_optionsButton.controlsbtnpos_image[0], obj_optionsButton.controlsbtnpos_image[1]]
	var imagexy = [startxy[0], startxy[1] + 270]
	x = camera_get_view_x(view_camera[0]) + imagexy[0]
	y = camera_get_view_y(view_camera[0]) + imagexy[1]
	
}


if(btn_pos == 1)
{ 
	draw_sprite_ext(spr_backButton, 1,imagexy[0], imagexy[1] ,1, 1,0,c_white,obj_optionsButton.alpha);
	
}
else if(btn_pos == 2)
{
	
		obj_controlsButton.showcontrols = false;
		obj_optionsButton.menuopen = false;
	
}
else
{
	
	draw_sprite_ext(spr_backButton, 0, imagexy[0], imagexy[1] ,1, 1,0,c_white,obj_optionsButton.alpha);
}
