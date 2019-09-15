/// @description Insert description here
// You can write your code in this editor

if(!fetch && (room_get_name(room) = "rm_pre_tutorial" || room_get_name(room) ="rm_tutorial")) //Global var used to making sure these outputs only appear in the expanse because the levels can use this
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
	
	if (drawbuttons && (dialog_output_2 != "null" && dialog_output_3 != "null"))
	{
		optn_btn_handler(dialog_branch, dialog_output_2, dialog_output_3, dialog_done);
	}

}
else if(!fetch)//if not in expanse then send the dialoug directly to the player/vfxmanager to manage
{
	obj_vfxmanager.text_box_top_text = dialog_output_1
	
}