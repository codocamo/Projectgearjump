/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_giftext))
{
	if(obj_giftext.help_chkpt_ftr > 6)
	{
		draw_sprite(spr_playerfullburn, -1, x - 50, y - 80);
		//max_player_vertical_speed = 30
		sprite_index = spr_playerfullburn;
		image_speed = 1.5
	
	}
	else if(obj_giftext.help_chkpt_ftr > 5)
	{
		draw_sprite(spr_playerburn, -1, x - 100, y - 100);
		//max_player_vertical_speed = 30
		sprite_index = spr_playerburn;
		image_speed = 2
	
	}
	else if(obj_giftext.help_chkpt_ftr > 4)
	{
		in_tubble = true
		//draw_sprite(spr_playertumble, 0, x, y);
		if(sprite_get_name(sprite_index) != "spr_playertumble")
		{
		image_index = 0
		}
		draw_sprite(spr_playertumble, -1, x, y);
	
		sprite_index = spr_playertumble;
		image_speed = 1.5

	}
}


if(player_dying == true){
draw_sprite(spr_playerdeath, -1, x, y);
sprite_index = spr_playerdeath;
if(image_index > image_number - 1){ room_restart();};
} 
else if((mid_jump == false) && (in_tubble == false)){
if(gear1){draw_sprite(spr_playerrun_gear1, -1, x, y); }
else if (gear2){draw_sprite(spr_playerrun_gear2, -1, x, y);}
else if (gear3){draw_sprite(spr_playerrun_gear3, -1, x, y); }
sprite_index = spr_playerrun_gear1;
}
else if((mid_jump == true) && (in_tubble == false)){
if(gear1){draw_sprite(spr_playerjump, 1, x, y); }
else if(gear2){draw_sprite(spr_playerjump, 0, x, y); } 
else if(gear3){draw_sprite(spr_playerjump, 2, x, y); }
//draw_sprite(spr_playerjump, 2, x, y); 
sprite_index = spr_playerjump;
}
