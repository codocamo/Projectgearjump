/// @description Insert description here
// You can write your code in this editor

//if(instance_exists(obj_chkpt)&& room_get_name(room) == "rm_tutorial")
//{

//}
//else 
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


if(player_dying == true){
draw_sprite(spr_playerdeath, -1, x, y);
sprite_index = spr_playerdeath;
if(image_index > image_number - 1){ room_restart();}; //restart the level
}
else if(inslide == true){
if(gear1){draw_sprite(spr_playerslide_gear1, 0, x, y); }
else if (gear2){draw_sprite(spr_playerslide_gear2, 0, x, y);}
else if (gear3){draw_sprite(spr_playerslide_gear3, 0, x, y); }
//else{draw_sprite(spr_playerslide, 0, x, y); }
sprite_index = spr_playerslide_gear1;

}
else if((start_run_anim == true) && (in_tumble == false)){
if(gear1){draw_sprite(spr_playerrun_gear1, -1, x, y); }
else if (gear2){draw_sprite(spr_playerrun_gear2, -1, x, y);}
else if (gear3){draw_sprite(spr_playerrun_gear3, -1, x, y); }
else{draw_sprite(spr_playerrun_gear0, -1, x, y); }
sprite_index = spr_playerrun_gear1;
}
else if((mid_jump == true) && (in_tumble == false)){
if(gear1){draw_sprite(spr_playerjump, 1, x, y); }
else if(gear2){draw_sprite(spr_playerjump, 0, x, y); } 
else if(gear3){draw_sprite(spr_playerjump, 2, x, y); }
//draw_sprite(spr_playerjump, 2, x, y); 
sprite_index = spr_playerjump;
}




draw_sprite(spr_pkupslideindicator, 0, x+15, y-60)

if (pkupslidestate)
{
	draw_sprite(spr_pkupslideindicator, 1, x+15, y-60)
}




//slide and general help text

if(lvlhelptxt)
{
	draw_set_font(fnt_renner_ingametext)
	draw_text_ext_transformed_color(x + 10,y - 100, "Explore and find the warp point" ,30, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
}
if(pkupslidestate && !inslide && slidehelp)
{
	draw_set_font(fnt_renner_ingametext_big)
	draw_text_ext_transformed_color(x - 10,y + 60, "Press S" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
}
else if (inslide && slidehelp)
{
	
	draw_set_font(fnt_renner_ingametext_big)
	draw_text_ext_transformed_color(x - 50,y + 60, "Good!" ,20, 200, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow, 1 )
}