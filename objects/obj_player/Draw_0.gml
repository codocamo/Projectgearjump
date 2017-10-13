/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_chkpt)&& room_get_name(room) == "rm_tutorial")
{

}
else if(instance_exists(obj_chkpt))
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
		in_tumble = true
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
if(image_index > image_number - 1){ room_restart();};
} 
else if((mid_jump == false) && (in_tumble == false)){
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
