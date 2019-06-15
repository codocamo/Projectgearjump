/// @description Insert description here
// You can write your code in this editor

//if(instance_exists(obj_chkpt)&& room_get_name(room) == "rm_tutorial")
//{

//}
//else 

//gpu_set_blendmode(bm_add)

if(instance_exists(obj_chkpt))
{
	if(fullburn)
	{
		if(gear1){draw_sprite(spr_playerfullburn_gear1, -1, x - 50, y - 80); }
		else if (gear2){draw_sprite(spr_playerfullburn_gear2, -1, x - 50, y - 80);}
		else if (gear3){draw_sprite(spr_playerfullburn_gear3, -1, x - 50, y - 80); }
		else{draw_sprite(spr_playerfullburn_gear0, -1, x - 50, y - 80); }
		
		sprite_index = spr_playerfullburn_gear1;
		image_speed = 1.5
	
	}
	else if(burn)
	{
		if(gear1){draw_sprite(spr_playerburn_gear1, -1, x - 100, y - 100); }
		else if (gear2){draw_sprite(spr_playerburn_gear2, -1, x - 100, y - 100);}
		else if (gear3){draw_sprite(spr_playerburn_gear3, -1, x - 100, y - 100); }
		else{draw_sprite(spr_playerburn_gear0, -1, x - 100, y - 100); }
		
		
		sprite_index = spr_playerburn_gear1;
		image_speed = 2
	
	}
	else if(tumble)
	{
		in_tumble = true;
		jumplimitunlock = false;
		//makes sure animtion starts at frame 0
		if(sprite_get_name(sprite_index) != "spr_playertumble_gear1" && sprite_get_name(sprite_index) != "spr_playertumble_gear2" && sprite_get_name(sprite_index) != "spr_playertumble_gear3" && sprite_get_name(sprite_index) != "spr_playertumble_gear0")
		{
		image_index = 0
		}
		
		//uses apropriate tumble animation
		if(gear1){draw_sprite(spr_playertumble_gear1, -1, x, y); }
		else if (gear2){draw_sprite(spr_playertumble_gear2, -1, x, y);}
		else if (gear3){draw_sprite(spr_playertumble_gear3, -1, x, y); }
		else{draw_sprite(spr_playertumble_gear0, -1, x, y); }
	
		sprite_index = spr_playertumble_gear1;
		image_speed = 1.5
		

	}
}


if(player_dying == true)
{
	if (!instance_exists(obj_playerdeathanim)){
	instance_create_depth(x,y,0,obj_playerdeathanim)}
}
else if(inslide == true)
{
	if(infaze){draw_sprite(spr_playerslide_faze, -1, x, y);sprite_index = spr_playerslide_gear1; }
	else if(gear1switchrequest){draw_sprite(spr_playerslide_gear1, -1, x, y);sprite_index = spr_playerslide_gear1; }
	else if (gear2switchrequest){draw_sprite(spr_playerslide_gear2, -1, x, y);sprite_index = spr_playerslide_gear2;}
	else if (gear3switchrequest){draw_sprite(spr_playerslide_gear3, -1, x, y);sprite_index = spr_playerslide_gear3; }
	else{draw_sprite(spr_playerslide_gear0, -1, x, y); sprite_index = spr_playerslide_gear0;}
}
else if(start_idle)
{
	if(infaze){sprite_index = spr_playeridle1_faze; shdGlitchST_draw_sprite(sprite_index, -1, x, y); }
	else if(gear1switchrequest){draw_sprite(spr_playeridle1_gear1, -1, x, y); sprite_index = spr_playeridle1_gear1;}
	else if (gear2switchrequest){draw_sprite(spr_playeridle1_gear2, -1, x, y); sprite_index = spr_playeridle1_gear2;}
	else if (gear3switchrequest){draw_sprite(spr_playeridle1_gear3, -1, x, y); sprite_index = spr_playeridle1_gear3;}
	else{draw_sprite(spr_playeridle1_gear0, -1, x, y); sprite_index = spr_playeridle1_gear0;}
}
else if(start_squat)
{
	if(gear1switchrequest && obj_vfxmanager.play_switch_vfx ){draw_sprite(spr_player_squat, 0, x, y); }
	else if (gear2switchrequest && obj_vfxmanager.play_switch_vfx ){draw_sprite(spr_player_squat, 1, x, y);}
	else if (gear3switchrequest && obj_vfxmanager.play_switch_vfx ){draw_sprite(spr_player_squat, 2, x, y); }
	//else{draw_sprite(spr_playerrun_gear0, -1, x, y); }
	sprite_index = spr_player_squat;
}
else if((start_run_anim == true) && (in_tumble == false))
{
	//if(gear1switchrequest){sprite_index = spr_playerrun_gear1; shdGlitchST_draw_sprite(sprite_index, -1, x, y); }
	if(infaze){sprite_index = spr_playerrun_faze; shdGlitchST_draw_sprite(sprite_index, -1, x, y); }
	else if(gear1switchrequest){draw_sprite(spr_playerrun_gear1, -1, x, y); sprite_index = spr_playerrun_gear1;}
	else if (gear2switchrequest){draw_sprite(spr_playerrun_gear2, -1, x, y);sprite_index = spr_playerrun_gear2;}
	else if (gear3switchrequest){draw_sprite(spr_playerrun_gear3, -1, x, y); sprite_index = spr_playerrun_gear3;}
	else{draw_sprite(spr_playerrun_gear0, -1, x, y); sprite_index = spr_playerrun_gear0;}
}
else if((mid_jump == true) && (in_tumble == false))
{
	if (infaze){sprite_index = spr_playerjump_faze; shdGlitchST_draw_sprite(sprite_index, -1, x, y); }
	else if(gear1switchrequest){draw_sprite(spr_playerjump, 1, x, y); image_index = 1; sprite_index = spr_playerjump;}
	else if(gear2switchrequest){draw_sprite(spr_playerjump, 0, x, y); image_index = 0; sprite_index = spr_playerjump;} 
	else if(gear3switchrequest){draw_sprite(spr_playerjump, 2, x, y); image_index = 2; sprite_index = spr_playerjump;}
	else {draw_sprite(spr_playerjump_gear0, current_gear, x, y);sprite_index = spr_playerjump_gear0;} 
}


//gpu_set_blendmode(bm_normal)


if(respawnpos_xy[0] > 0 && respawnpos_xy[1] > 0)
{
	draw_sprite_ext(checkpointsprite[0], checkpointsprite[1], respawnpos_xy[0], respawnpos_xy[1], 1, 1 ,0, c_gray, 0.8)
	
}

//draw_sprite(spr_pkupslideindicator, 0, x+15, y-60)

//if (pkupslidestate[0])
//{
//	draw_sprite(spr_pkupslideindicator, pkupslidestate[1], x+15, y-60)
//}




//slide and general help text

////if(lvlhelptxt && room_get_name(room) == "rm_lvl1_kupler")
//if(true)
//{
//	draw_sprite(spr_inlvltextbox, 0 , x, y - 50)
//	draw_set_font(fnt_renner_ingametext)
//	draw_text_ext_transformed_color(x + 50 ,y - 240, "Explore and find the warp point" ,30, 180, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
//}

//if(pkupslidestate[0] && !inslide && slidehelp)
//{
//	draw_set_font(fnt_renner_ingametext_med)
//	draw_text_ext_transformed_color(x - 10,y + 60, "Press S" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
//}
//else if (inslide && slidehelp)
//{
	
//	draw_set_font(fnt_renner_ingametext_med)
//	draw_text_ext_transformed_color(x - 50,y + 60, "Good!" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
//}