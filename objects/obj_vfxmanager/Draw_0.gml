/// @description Insert description here
// You can write your code in this editor

////gear switch vfx
if (gear_switched)
{ 
	rando = floor(random(360));
	gear_switched = false;
	play_switch_vfx = true;
	sprite_index = spr_gearswitch_vfx
	image_index = 4
	image_speed = 2
}

if(play_switch_vfx && image_index + 1 < image_number)
{
	draw_sprite_ext(spr_gearswitch_vfx, -1, switchxy[0] ,switchxy[1] , 1, 1, rando, c_white, 1)
}
else {play_switch_vfx = false}

//if(keyboard_check_pressed(ord("Z"))) gear_switched = true







////UI slide icon and txtbox below!
slide_indicator_x = obj_player.x + 40
slide_indicator_y = lerp(slide_indicator_y, obj_player.y - 15, 0.6)
switch(obj_player.current_gear)
{
	//case 1: var slideindicatorimg = spr_pkupslideindicator_gear1; var textcolour = make_color_rgb(109,255,109); break;
	//case 2: var slideindicatorimg = spr_pkupslideindicator_gear2; var textcolour = make_color_rgb(136,203,255); break;
	//case 3: var slideindicatorimg = spr_pkupslideindicator_gear3; var textcolour = make_color_rgb(2,239,228); break;
	//default: case 0: var slideindicatorimg = spr_pkupslideindicator_gear0; var textcolour = c_white; break;
	case 1: var indicatorimg = spr_pkupslideindicator_gear1; var textcolour = make_color_rgb(227,225,240); break;
	case 2: var indicatorimg = spr_pkupslideindicator_gear2; var textcolour = make_color_rgb(249,231,255); break;
	case 3: var indicatorimg = spr_pkupslideindicator_gear3; var textcolour = make_color_rgb(224,249,255); break;
	default: var indicatorimg = spr_pkupslideindicator_gear0; var textcolour = c_white; break;

}


draw_sprite_ext(indicatorimg, clamp(obj_player.pkupslidestate[1], 0, 3), slide_indicator_x, slide_indicator_y, 1,1, 0, c_white, slide_indicator_alpha)
slide_indicator_alpha  = lerp(slide_indicator_alpha, slide_indicator_lerpto, 0.3)


draw_sprite_ext(spr_inlvltextbox_below, obj_player.current_gear, slide_indicator_x, slide_indicator_y, 1,1, 0, c_white, text_box_bottom_alpha)

draw_set_font(fnt_renner_ingametext_med)
draw_text_ext_transformed_color(slide_indicator_x - text_box_bottom_offset[0],slide_indicator_y + text_box_bottom_offset[1], text_box_bottom_text ,30, 100, 1, 1, 0, textcolour,textcolour,textcolour,textcolour, text_box_bottom_alpha )
text_box_bottom_alpha  = lerp(text_box_bottom_alpha, text_box_bottom_lerpto, 0.3)

if(stop_all_text)
{slide_indicator_lerpto = 0}
else if (obj_player.pkupslidestate[0])
{
		slide_indicator_lerpto = 1
}
else {slide_indicator_lerpto = 0}

if(stop_all_text)
{text_box_bottom_lerpto = 0}
else if(obj_player.pkupslidestate[0] && !obj_player.inslide && obj_player.slidehelp)
{
	text_box_bottom_text = "Press [S]"
	text_box_bottom_lerpto = 1
	text_box_bottom_offset[0] = 7
	text_box_bottom_offset[1] = 105
}
else if (obj_player.inslide && obj_player.slidehelp)
{
	text_box_bottom_text  =  "Good!" 
	slide_indicator_offset[0] = 7
	slide_indicator_offset[1] = 120
}
else if(obj_player.pkupfazestate[0] && !obj_player.infaze && obj_player.fazehelp)
{
	text_box_bottom_text = "Press [A]"
	text_box_bottom_lerpto = 1
	text_box_bottom_offset[0] = 7
	text_box_bottom_offset[1] = 105
}
else if (obj_player.infaze && obj_player.fazehelp)
{
	text_box_bottom_text  =  "Good!" 
	slide_indicator_offset[0] = 7
	slide_indicator_offset[1] = 120
}
else{text_box_bottom_lerpto = 0}



////Textbox top

	text_box_top_x = obj_player.x
	text_box_top_y = lerp(text_box_top_y, obj_player.y - 60, 0.6)


draw_sprite_ext(spr_inlvltextbox_top, obj_player.current_gear, text_box_top_x, text_box_top_y, 1,1, 0, c_white, text_box_top_alpha)
draw_set_font(fnt_renner_ingametext)
draw_text_ext_transformed_color(text_box_top_x + text_box_top_offset[0] ,text_box_top_y - text_box_top_offset[1], text_box_top_text ,30, 180, text_box_top_scale, text_box_top_scale, 0, textcolour,textcolour,textcolour,textcolour, text_box_top_alpha )
	
text_box_top_alpha = lerp(text_box_top_alpha, text_box_top_lerpto, 0.3)

if(stop_all_text)
{text_box_top_lerpto = 0}
else if(obj_player.lvlhelptxt)//&& room_get_name(room) == "rm_lvl1_kupler"
{	
	//text_box_top_text = "Explore and find the warp point"
	
	//text_box_top_text is set in obj_dialogcontroller
	text_box_top_lerpto = 1
	text_box_top_offset[0] = 50
	text_box_top_offset[1] = 190
	text_box_top_scale = 1
}
else if(obj_player.gear_change_count > 2)
{
	text_box_top_text = "!"
	text_box_top_lerpto = 1
	text_box_top_offset[0] = 50
	text_box_top_offset[1] = 220
	text_box_top_scale = 4
}
else if(obj_player.start_cooldown[0])
{
	text_box_top_text = "REBOOT"
	text_box_top_lerpto = 1
	text_box_top_offset[0] = 50
	text_box_top_offset[1] = 190
	text_box_top_scale = 2
}
else if(obj_player.reboot_help[0] )
{
	text_box_top_text = string_hash_to_newline("MESSAGE:#Painful?#Dont overload the suit. ^^#~ OG")
	text_box_top_lerpto = 1
	text_box_top_offset[0] = 50
	text_box_top_offset[1] = 235
	text_box_top_scale = 1
}
else
{
	text_box_top_lerpto = 0
}
	



////mineral counter
mineral_indicator_x = obj_player.x - 40
mineral_indicator_y = lerp(mineral_indicator_y, obj_player.y - 5, 0.4)
if(minerals_exists)
{
	draw_sprite_ext(spr_mineraltextbox, obj_player.current_gear , mineral_indicator_x, mineral_indicator_y, 1, 1,0,c_white, mineral_indicator_alpha)
	mineral_indicator_alpha = lerp(mineral_indicator_alpha, mineral_indicator_lerpto, 0.2)

	draw_set_font(fnt_renner_ingametext)
	draw_text_ext_transformed_color(mineral_indicator_x - 53,mineral_indicator_y + 35, string(global.mineralcount[0])+"/"+ string(global.mineralcount[1]) ,30, 180, 1, 1, 0, textcolour,textcolour,textcolour,textcolour, mineral_indicator_alpha )

	if(stop_all_text)
	{mineral_indicator_lerpto = 0}
	else if (mineral_indicator_txt != global.mineralcount[0])
	{
		mineral_indicator_lerpto = 1
		mineral_indicator_txt = global.mineralcount[0]
		mineral_indicator_fade = false
		alarm[0] = 60
	
	}
	
}


//faze indicator
draw_sprite_ext(indicatorimg, clamp(obj_player.pkupfazestate[1], 0, 3), mineral_indicator_x, mineral_indicator_y, -1,1, 0, c_white, faze_indicator_alpha)
faze_indicator_alpha  = lerp(faze_indicator_alpha, faze_indicator_lerpto, 0.3)


if(stop_all_text)
{faze_indicator_lerpto = 0}
else if (obj_player.pkupfazestate[0])
{
		faze_indicator_lerpto = 1
}
else {faze_indicator_lerpto = 0}

