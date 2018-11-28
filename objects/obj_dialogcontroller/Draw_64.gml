/// @description Insert description here
// You can write your code in this editor

if(!fetch)
{
	draw_set_font(fnt_didactgothic_consciencetxt);
	
	var x_pos = camera_get_view_width(view_camera[0]) / 2 - 96

	var y_pos = camera_get_view_height(view_camera[0]) -100
	
	draw_set_halign(fa_center);
	draw_text_ext_color(500, 100, dialog_output_1, 30, 200, c_purple, c_purple, c_purple, c_purple, 1)
	
	
	if (alarmon = false)
	{
		alarmon = true
		alarm[0] = 8
	}
	
	if (drawbuttons && (dialog_output_2 != "" || dialog_output_3 != ""))
	{
		optn_btn_handler(dialog_branch, dialog_output_2, dialog_output_3, dialog_done);
	}

}
