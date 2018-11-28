/*if(instance_exists(obj_paused))
{
	var imagex = obj_optionsButton.quitbutton_image[0]
	var imagey = obj_optionsButton.quitbutton_image[1]
}
else
{
	var imagex = x
	var imagey = y
}


alpha = lerp(alpha, 1, 0.02)

if(room_get_name(room) != "rm_startmenu")
{

	if(btn_pos = 0){draw_sprite_ext(spr_quitButtonUp, -1, imagex, imagey,0.7, 0.7,0,c_white,1); doonce = true;}
	else if(btn_pos = 1)
	{ 
		if(start_img_index < start_img_number - 1)
		{ //switch_start_active = false
			if(doonce){image_index = 0; doonce = false}
			draw_sprite_ext(spr_quitButtonOver, -1, imagex, imagey,0.7, 0.7,0,c_white,1);
			sprite_index = spr_quitButtonOver;
			start_img_index = image_index;
			start_img_number = image_number;
			image_speed = 1.8
		}
		else
		{
			draw_sprite_ext(spr_quitButtonOverActive, -1, imagex, imagey,0.7, 0.7,0,c_white,1);
			sprite_index = spr_quitButtonOverActive;
			image_speed = 1.8
			doonce = true
		}
	}
	else if(btn_pos = 2) draw_sprite(spr_startButtonDown, -1, imagex, imagey);

}
else
{
	
	if(btn_pos = 0){draw_sprite_ext(spr_quitButtonUp, -1, x, y,1, 1,0,c_white,alpha); doonce = true;}
	else if(btn_pos = 1)
	{ 
		if(start_img_index < start_img_number - 1)
		{ //switch_start_active = false
			if(doonce){image_index = 0; doonce = false}
			draw_sprite_ext(spr_quitButtonOver, -1, x, y,1, 1,0,c_white,alpha);
			sprite_index = spr_quitButtonOver;
			start_img_index = image_index;
			start_img_number = image_number;
			image_speed = 1.8
		}
		else
		{
			draw_sprite_ext(spr_quitButtonOverActive, -1, x, y,1,1,0,c_white,alpha);
			sprite_index = spr_quitButtonOverActive;
			image_speed = 1.8
			doonce = true
		}
	}
	else if(btn_pos = 2) draw_sprite_ext(spr_startButtonDown, -1, x, y,1,1,0,c_white,alpha);


}*/