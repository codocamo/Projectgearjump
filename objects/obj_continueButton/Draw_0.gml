/// @description Insert description here
// You can write your code in this editor


if(room_get_name(room) != "rm_startmenu")
{

	if(btn_pos = 0) draw_sprite_ext(spr_continueButtonUp, -1, x, y,0.7, 0.7,0,c_white,1);
	else if(btn_pos = 1)
	{ 
		if(start_img_index < start_img_number - 1)
		{ //switch_start_active = false
			if(sprite_get_name(sprite_index) != "spr_continueButtonOver"){image_index = 0}
			draw_sprite_ext(spr_continueButtonOver, -1, x, y,0.7, 0.7,0,c_white,1);
			sprite_index = spr_continueButtonOver;
			start_img_index = image_index;
			start_img_number = image_number;
			image_speed = 1.8
		}
		else
		{
			draw_sprite_ext(spr_continueButtonOverActive, -1, x, y,0.7, 0.7,0,c_white,1);
			sprite_index = spr_continueButtonOverActive;
			image_speed = 1.8
		}
	}
	else if(btn_pos = 2) draw_sprite(spr_startButtonDown, -1, x, y);

	//draw_sprite_ext(spr_restartButtonUp, -1, x, y,0.5, 0.5,0,c_white,1)


}
else
{
	
	if(btn_pos = 0) draw_sprite_ext(spr_continueButtonUp, -1, x, y,1, 1,0,c_white,1);
	else if(btn_pos = 1)
	{ 
		if(start_img_index < start_img_number - 1)
		{ //switch_start_active = false
			if(sprite_get_name(sprite_index) != "spr_continueButtonOver"){image_index = 0}
			draw_sprite_ext(spr_continueButtonOver, -1, x, y,1, 1,0,c_white,1);
			sprite_index = spr_continueButtonOver;
			start_img_index = image_index;
			start_img_number = image_number;
			image_speed = 1.8
		}
		else
		{
			draw_sprite_ext(spr_continueButtonOverActive, -1, x, y,1, 1,0,c_white,1);
			sprite_index = spr_continueButtonOverActive;
			image_speed = 1.8
		}
	}
	else if(btn_pos = 2) draw_sprite(spr_startButtonDown, -1, x, y);

	//draw_sprite_ext(spr_restartButtonUp, -1, x, y,0.5, 0.5,0,c_white,1)

	
}