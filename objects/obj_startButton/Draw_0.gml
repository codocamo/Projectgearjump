/// @description Insert description here
// You can write your code in this editor


if(btn_pos = 0) draw_sprite(spr_startButtonUp, -1, x, y);
else if(btn_pos = 1)
{ 
	if(start_img_index < start_img_number - 1)
	{ //switch_start_active = false
		if(sprite_get_name(sprite_index) != "spr_startButtonOver"){image_index = 0}
		draw_sprite(spr_startButtonOver, -1, x, y);
		sprite_index = spr_startButtonOver;
		start_img_index = image_index;
		start_img_number = image_number;
		image_speed = 1.8
	}
	else
	{
		draw_sprite(spr_startButtonOverActive, -1, x, y);
		sprite_index = spr_startButtonOverActive;
		image_speed = 1.8
	}
}
else if(btn_pos = 2) draw_sprite(spr_startButtonDown, -1, x, y);