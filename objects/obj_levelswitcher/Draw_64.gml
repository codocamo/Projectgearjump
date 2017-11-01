/// @description Insert description here
// You can write your code in this editor
if(whiteflash)
{
		draw_sprite(spr_flashdarken, 0,0,0);
}

if(drawleveldetails)
{
	switch(room_get_name(room))
	{
		case "rm_tutorial": draw_sprite_ext(spr_flashdarken,1,0,0,1,1,0,c_white,0.9); draw_set_font(fnt_avayx); draw_text_ext_color(500, 100,string_hash_to_newline("OORT CLOUD BODY"), 25, 1200, c_white, c_white, c_white, c_white, 1); draw_set_font(fnt_gravity); draw_text_ext_color(700, 300,string_hash_to_newline("Class: Asteroids???#Hazzards: NONE#Atmosphere: NONE#Fun Fact: Its not fun"), 25, 1200, c_white, c_white, c_white, c_white, 1); break;
		case "rm_pre_tutorial": draw_sprite_ext(spr_flashdarken,1,0,0,1,1,0,c_white,0.9); draw_set_font(fnt_avayx); draw_text_ext_color(500, 100,string_hash_to_newline("OORT CLOUD BODY"), 25, 1200, c_white, c_white, c_white, c_white, 1); draw_set_font(fnt_gravity); draw_text_ext_color(700, 300,string_hash_to_newline("Class: Asteroids???#Hazzards: NONE#Atmosphere: NONE#Fun Fact: Its not fun"), 25, 1200, c_white, c_white, c_white, c_white, 1); break;
		
	}
	
}