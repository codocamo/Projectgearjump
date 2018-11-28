/// @description Insert description here
// You can write your code in this editor



/*if(prompt_active)
{
	draw_sprite_ext(spr_trashButton, 1, x, y,1, 1,0,c_gray,obj_optionsButton.alpha);
	 
	draw_set_halign(fa_center);
	draw_set_font(fnt_renner_ingametext_big);
	
	if(!deed_done)
	{
		draw_text_ext_color(x, y-80 ,string_hash_to_newline("Delete Data?"), 40, camera_get_view_width(view_camera[0]), c_yellow, c_yellow, c_yellow, c_yellow, obj_optionsButton.alpha); 
		draw_text_ext_color(x, y ,string_hash_to_newline("Yes:  Slam [enter]#No:  Just let me fade"), 45, camera_get_view_width(view_camera[0]), c_yellow, c_yellow, c_yellow, c_yellow, obj_optionsButton.alpha);
	}
	else
	{
		draw_text_ext_color(x, y-80 ,string_hash_to_newline("DEED DONE"), 40, camera_get_view_width(view_camera[0]), c_yellow, c_yellow, c_yellow, c_yellow, obj_optionsButton.alpha); 
	}
}
else if(btn_pos == 0)
{
	draw_sprite_ext(spr_trashButton, 0, x, y,1, 1,0,c_white,obj_optionsButton.alpha);
}
else if(btn_pos == 1)
{
	draw_sprite_ext(spr_trashButton, 1, x, y,1, 1,0,c_white,obj_optionsButton.alpha);
}
else if(btn_pos == 2)
{
	draw_sprite_ext(spr_trashButton, 1, x, y,1, 1,0,c_white,obj_optionsButton.alpha);
	prompt_active = true
	
}

if(keyboard_check(vk_enter) && !deed_done && prompt_active)
{
	file_delete("savedata.ini")
	deed_done = true
}*/
