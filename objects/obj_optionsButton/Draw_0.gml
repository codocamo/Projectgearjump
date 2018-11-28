///// @description Insert description here
//// You can write your code in this editor


//creation_alpha = lerp(creation_alpha, 1, 0.02)
//draw_sprite_ext(spr_optionbutton, -1, x, y, 1, 1, rotate, c_white,creation_alpha)


		
		


//if(btn_pos = 1)
//{ 
//		bar_show = true
//		alpha = clamp(alpha + 0.10, -1,1) 
		
//		var mutebtnx = camera_get_view_width(view_camera[0])/4
//		var mutebtny = 200
//		if (!instance_exists(obj_muteButton)) {instance_create_depth(mutebtnx, mutebtny, 0, obj_muteButton);}
//		if (!instance_exists(obj_trashButton)) {instance_create_depth((mutebtnx * 3) , mutebtny, 0, obj_trashButton);}
//		if (!instance_exists(obj_controlsButton)) {instance_create_depth((mutebtnx * 2) , mutebtny, 0, obj_controlsButton);}
//}



//if(alpha > 0)
//{
//		rotate += 3 
//		sprite_index = spr_optionbar;
//		var optbarx = camera_get_view_width(view_camera[0])/2
//		var optbary =(sprite_get_height(sprite_index)/2) +10
		
//		draw_sprite_ext(spr_optionbar, -1, optbarx, optbary, 1, 1, 0, c_white,alpha)
		
//		draw_set_halign(fa_center);
//		draw_set_font(fnt_renner_ingametext_big); 
//		draw_text_ext_color(optbarx, 50,string_hash_to_newline("OPTIONS"), 25, camera_get_view_width(view_camera[0]), c_white, c_white, c_white, c_white, alpha); 
		
		
		
//		if ((mouse_x > optbarx - (sprite_width/2)) && (mouse_x < optbarx + (sprite_width/2)) &&
//		(mouse_y > optbary - (sprite_height/2)) && (mouse_y < optbary + (sprite_height/2))
//		)
//		{
//			alpha =  clamp(alpha + 0.05, -1,1) 
//		}
//		else
//		{
			
//			alpha =  clamp(alpha - 0.01, -1,1) 
//		}
		
			
//}
//else
//{
//	//if (instance_exists(obj_muteButton)) {instance_destroy(obj_muteButton);}
	
//	if (instance_exists(obj_trashButton)) {obj_trashButton.prompt_active = false}
//}

