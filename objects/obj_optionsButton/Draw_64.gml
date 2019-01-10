/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor


creation_alpha = lerp(creation_alpha, 1, 0.02)
if(room_get_name(room) != "rm_startmenu"){draw_sprite_ext(spr_optionbutton, -1, view_wport[0] * 0.5, (view_hport[0] * 0.5) + 100, 1, 1, rotate, c_white,creation_alpha)}
else
{draw_sprite_ext(spr_optionbutton, -1, x, y, 1, 1, rotate, c_white,creation_alpha)}


		



if(btn_pos = 1|| menuopen)
{ 
	bar_show = true
	alpha = clamp(alpha + 0.10, -1,1) 
		
	
	if(room_get_name(room) = "rm_startmenu")
	{
		var mutebtnx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/4)
		var mutebtny = camera_get_view_y(view_camera[0]) + 200
		
		if (!instance_exists(obj_muteButton)) {instance_create_depth(mutebtnx, mutebtny, -110, obj_muteButton);}
		if (!instance_exists(obj_trashButton)) {instance_create_depth((mutebtnx * 3) , mutebtny, -110, obj_trashButton);}
		if (!instance_exists(obj_controlsButton)) {instance_create_depth((mutebtnx * 2) , mutebtny, -120, obj_controlsButton);}
		
		mutebtnpos_image = [(camera_get_view_width(view_camera[0])/4), 200]
		controlsbtnpos_image = [mutebtnpos_image[0] * 2, mutebtnpos_image[1]]
		trashbtnpos_image = [mutebtnpos_image[0] * 3, mutebtnpos_image[1]]
	}
	else
	{
		//total icons +1
		var mutebtnx = (camera_get_view_width(view_camera[0])/4)
		var mutebtny = 200
	
		mutebtnpos_object = [camera_get_view_x(view_camera[0]) + mutebtnx, camera_get_view_y(view_camera[0])+ mutebtny]
		controlsbtnpos_object = [camera_get_view_x(view_camera[0]) + (mutebtnx * 2), camera_get_view_y(view_camera[0]) +mutebtny]
		//trashbtnpos_object = [camera_get_view_x(view_camera[0]) +mutebtnx * 3, camera_get_view_y(view_camera[0]) +mutebtny]
		quitbutton_object = [camera_get_view_x(view_camera[0]) +mutebtnx * 3, camera_get_view_y(view_camera[0]) +mutebtny]

		
		if (!instance_exists(obj_muteButton)) {instance_create_depth(mutebtnpos_object[0], mutebtnpos_object[1], -110, obj_muteButton);}
		obj_muteButton.x = mutebtnpos_object[0]; obj_muteButton.y = mutebtnpos_object[1]
		
		if (!instance_exists(obj_quitButton)) {instance_create_depth(quitbutton_object[0] , quitbutton_object[1], -110, obj_quitButton);}
		obj_quitButton.x = quitbutton_object[0]; obj_quitButton.y = quitbutton_object[1];
		
		if (!instance_exists(obj_controlsButton)) {instance_create_depth(controlsbtnpos_object[0] , controlsbtnpos_object[1], -110, obj_controlsButton);}
		obj_controlsButton.x = controlsbtnpos_object[0]; obj_controlsButton.y = controlsbtnpos_object[1];
		
		
		
		mutebtnpos_image = [mutebtnx, mutebtny]
		controlsbtnpos_image = [mutebtnx * 2,mutebtny]
		//trashbtnpos_image = [mutebtnx * 3,mutebtny]
		quitbutton_image = [mutebtnx * 3,mutebtny]
		
		
	}
}



if(alpha > 0)
{
		rotate += 3 
		sprite_index = spr_optionbar;
		var optbarx = camera_get_view_width(view_camera[0])/2
		var optbary =(sprite_get_height(sprite_index)/2) +10
		
		draw_sprite_ext(spr_optionbar, -1, optbarx, optbary, 1, 1, 0, c_white,alpha)
		
		draw_set_halign(fa_center);
		draw_set_font(fnt_renner_ingametext_big); 
		draw_text_ext_color(optbarx, 50,string_hash_to_newline("OPTIONS"), 25, camera_get_view_width(view_camera[0]), c_white, c_white, c_white, c_white, alpha); 
		
		
		
		if ((mouse_x > (camera_get_view_x(view_camera[0]) + optbarx) - (sprite_width/2)) && (mouse_x < (camera_get_view_x(view_camera[0]) + optbarx) + (sprite_width/2)) &&
		(mouse_y > (camera_get_view_y(view_camera[0]) + optbary) - (sprite_height/2)) && (mouse_y < (camera_get_view_y(view_camera[0]) + optbary) + (sprite_height/2))
		)
		{
			alpha =  clamp(alpha + 0.05, -1,1) 
		}
		else
		{
			
			alpha =  clamp(alpha - 0.01, -1,1) 
		}
		
			
}
else
{
	//if (instance_exists(obj_muteButton)) {instance_destroy(obj_muteButton);}
	
	if (instance_exists(obj_trashButton)) {obj_trashButton.prompt_active = false}
	if (instance_exists(obj_quitButton)) {obj_quitButton.prompt_active = false}
}

