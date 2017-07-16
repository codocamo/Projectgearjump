/// @description Insert description here
// You can write your code in this editor


if(object_giftext.help_chkpt > 1)
{
	draw_sprite(spr_burnup, -1, x, y);
	//max_player_vertical_speed = 30
	sprite_index = spr_burnup;
	image_speed = 0.8
	
}
else if(object_giftext.help_chkpt > 0)
{
	draw_sprite(spr_playerspin, -1, x, y);
	//max_player_vertical_speed = 30
	sprite_index = spr_playerspin;
	image_speed = 0.8
	
}


if(player_dying == true){
draw_sprite(spr_playerdeath, -1, x, y);
sprite_index = spr_playerdeath;
if(image_index > image_number - 1){ room_restart();};
} 
else if((mid_jump == false) && (object_giftext.help_chkpt < 1)){
if(gear1){draw_sprite(spr_playerrun_gear1, -1, x, y); }
else if (gear2){draw_sprite(spr_playerrun_gear2, -1, x, y);}
else if (gear3){draw_sprite(spr_playerrun_gear3, -1, x, y); }
sprite_index = spr_playerrun_gear1;
}
else if(mid_jump == true){
if(gear1){draw_sprite(spr_playerjump, 1, x, y); }
else if(gear2){draw_sprite(spr_playerjump, 0, x, y); } 
else if(gear3){draw_sprite(spr_playerjump, 2, x, y); }
//draw_sprite(spr_playerjump, 2, x, y); 
sprite_index = spr_playerjump;
}
