/// @description Insert description here
// You can write your code in this editor

alpha = lerp(alpha, 1, 0.02)

if(btn_pos = 0){draw_sprite_ext(spr_startButtonUp, -1, x, y,1, 1, 0,c_white, alpha ); doonce = true;}
else if(btn_pos = 1)
{ 
	if(start_img_index < start_img_number - 1)
	{ //switch_start_active = false
		
		if(doonce){image_index = 0; doonce = false} //makes sure animation starts at frame 1
		draw_sprite_ext(spr_startButtonOver, -1, x, y,1, 1, 0,c_white, alpha );
		sprite_index = spr_startButtonOver;
		start_img_index = image_index;
		start_img_number = image_number;
		image_speed = 1.8
	}
	else
	{
		draw_sprite_ext(spr_startButtonOverActive, -1, x, y,1, 1, 0,c_white, alpha );
		sprite_index = spr_startButtonOverActive;
		image_speed = 1.8
		doonce = true
	}
}
else if(btn_pos = 2) draw_sprite_ext(spr_startButtonDown, -1, x, y,1, 1, 0,c_white, alpha );