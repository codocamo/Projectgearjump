/// @description Insert description here
// You can write your code in this editor

if(!fetch)
{
	draw_set_font(fnt_gravity);
	
	var x_pos = camera_get_view_width(view_camera[0]) / 2 - 96

	var y_pos = camera_get_view_height(view_camera[0]) -100
	
	draw_set_halign(fa_center);
	draw_text_ext_color(500, 100, dialog_output, 25, 200, c_purple, c_purple, c_purple, c_purple, 1)
	
	if(!instance_exists(obj_btnopt1))
	{
		instance_create_depth(200, 475,-1, obj_btnopt1);
		
	}
	
	//draw_sprite(spr_instinctbtn, 0, 200, 475)
	//draw_sprite(spr_instinctbtn, 0, 600, 475)

}