/// @description Insert description here
// You can write your code in this editor


if(active)
{
	var view_x = camera_get_view_x(view_camera[0])
	var view_y = camera_get_view_y(view_camera[0])
	var view_w = camera_get_view_width(view_camera[0])
	var view_h = camera_get_view_height(view_camera[0])

	if((x + sprite_width < view_x || x - sprite_width > view_x + view_w) || (y + sprite_height < view_y || y -  sprite_height > view_y + view_h))
	{
		active = false
	}
}