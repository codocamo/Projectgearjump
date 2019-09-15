//////////////////LAYER ID//////////////////////////
var layerid_lvlbg = layer_get_id("Backgrounds_bg") 
var layerid_lvlbg_2 = layer_get_id("Backgrounds_bg_2") 
var layerid_lvlbg_3 = layer_get_id("Backgrounds_bg_3") 
var layerid_glow = layer_get_id("Backgrounds_glow") 
var layerid_stardust = layer_get_id("Backgrounds_stardust") 
var layerid_space = layer_get_id("Background_space") 
var layerid_space_layer0 = layer_get_id("Background_space_1") 
var layerid_space_layer1 = layer_get_id("Background_space_2")
var layerid_space_layer2 = layer_get_id("Background_space_3")
var layerid_space_layer3 = layer_get_id("Background_space_4")
/////////////////////////LAYER Y////////////////////
var layerid_lvlbgy = layer_get_y(layerid_lvlbg)
var layerid_lvlbgy_2 = layer_get_y(layerid_lvlbg_2)
var layerid_lvlbgy_3 = layer_get_y(layerid_lvlbg_3)
var layerid_glowy = layer_get_y(layerid_glow)
var layerid_stardusty = layer_get_y(layerid_stardust)
var layerid_spacey = layer_get_y(layerid_space)
var layerid_spacey_layer0 = layer_get_y(layerid_space_layer0)
var layerid_spacey_layer1 = layer_get_y(layerid_space_layer1)
var layerid_spacey_layer2 = layer_get_y(layerid_space_layer2)
var layerid_spacey_layer3 = layer_get_y(layerid_space_layer3)
///////////////////////LAYER X///////////////////
var layerid_lvlbgx = layer_get_x(layerid_lvlbg)
var layerid_lvlbgx_2 = layer_get_x(layerid_lvlbg_2)
var layerid_lvlbgx_3 = layer_get_x(layerid_lvlbg_3)
var layerid_glowx = layer_get_x(layerid_glow)
var layerid_stardustx = layer_get_x(layerid_stardust)
var layerid_spacex = layer_get_x(layerid_space)
var layerid_spacex_layer0 = layer_get_x(layerid_space_layer0)
var layerid_spacex_layer1 = layer_get_x(layerid_space_layer1)
var layerid_spacex_layer2 = layer_get_x(layerid_space_layer2)
var layerid_spacex_layer3 = layer_get_x(layerid_space_layer3)

if (obj_levelswitcher.animatedown){var player_velocity = obj_player.max_velocity[1]}
else if (obj_levelswitcher.animateup){var player_velocity = obj_player.max_velocity[1] * -1}
else if (obj_levelswitcher.animateright){var player_velocity = obj_player.max_velocity[0]}
else if (obj_levelswitcher.animateleft){var player_velocity = obj_player.max_velocity[0] * -1}
else{var player_velocity = obj_player.velocity[1]}



var player_velocitx = obj_player.velocity[0]


///////////////////////////////FOLLOW PLAYER Y//////////////////////////////////////////
if (bg_move_once)
{
	startdiff_lvlbgy = obj_player.y - layerid_lvlbgy
	startdiff_glowy = obj_player.y - layerid_glowy
	startdiff_stardusty = obj_player.y - layerid_stardusty
	startdiff_spacey = obj_player.y - layerid_spacey
	startdiff_spacey_layer0 = obj_player.y - layerid_spacey_layer0
	startdiff_spacey_layer1 = obj_player.y - layerid_spacey_layer1
	startdiff_spacey_layer2 = obj_player.y - layerid_spacey_layer2
	startdiff_spacey_layer3 = obj_player.y - layerid_spacey_layer3
	bg_move_once = false
	
}


//parralax stuf (sort this out)

if (obj_adhoc_scripts.stopparalax = false)
{
	//if is just used for the level select, else also stabalizes stars in a level
	if (obj_levelswitcher.animateright || obj_levelswitcher.animateleft)
	{
		
		if (obj_levelswitcher.animateright){var player_velocity = obj_player.max_velocity[1]}
		else if (obj_levelswitcher.animateleft){var player_velocity = obj_player.max_velocity[1]* -1}
	
		if((room_get_name(room) != "rm_pre_tutorial") && (room_get_name(room) !="rm_tutorial") ){obj_adhoc_scripts.xspeed_stars = [-0.0,-0.0,-0.0,-0.00]}
		else{obj_adhoc_scripts.xspeed_stars = [-0.4,-0.3,-0.2,-0.1]}
	
		obj_adhoc_scripts.xincrementor_stars[0] += obj_adhoc_scripts.xspeed_stars[0] * player_velocity
		layer_x(layerid_space_layer0, (cameraposx) + obj_adhoc_scripts.xincrementor_stars[0]);
		obj_adhoc_scripts.xincrementor_stars[1] += obj_adhoc_scripts.xspeed_stars[1] * player_velocity
		layer_x(layerid_space_layer1, (cameraposx) + obj_adhoc_scripts.xincrementor_stars[1]);
		obj_adhoc_scripts.xincrementor_stars[2] += obj_adhoc_scripts.xspeed_stars[2] * player_velocity
		layer_x(layerid_space_layer2, (cameraposx) + obj_adhoc_scripts.xincrementor_stars[2]);
		obj_adhoc_scripts.xincrementor_stars[3] += obj_adhoc_scripts.xspeed_stars[3] * player_velocity
		layer_x(layerid_space_layer3, (cameraposx) + obj_adhoc_scripts.xincrementor_stars[3]);
	}
	else
	{
		if (obj_levelswitcher.animatedown){var player_velocity = obj_player.max_velocity[1]} //max_velocity[0] is not enough [1] is perfect
		else if (obj_levelswitcher.animateup){var player_velocity = obj_player.max_velocity[1] * -1}
	//set the background speed of y 
		if((room_get_name(room) != "rm_pre_tutorial") && (room_get_name(room) !="rm_tutorial") ){obj_adhoc_scripts.yspeed_stars = [-0.0,-0.0,-0.0,-0.00]}
		else{obj_adhoc_scripts.yspeed_stars = [-0.4,-0.3,-0.2,-0.1]}
	
		obj_adhoc_scripts.yincrementor_stars[0] += obj_adhoc_scripts.yspeed_stars[0] * player_velocity
		layer_y(layerid_space_layer0, (cameraposy) + obj_adhoc_scripts.yincrementor_stars[0]);
		obj_adhoc_scripts.yincrementor_stars[1] += obj_adhoc_scripts.yspeed_stars[1] * player_velocity
		layer_y(layerid_space_layer1, (cameraposy) + obj_adhoc_scripts.yincrementor_stars[1]);
		obj_adhoc_scripts.yincrementor_stars[2] += obj_adhoc_scripts.yspeed_stars[2] * player_velocity
		layer_y(layerid_space_layer2, (cameraposy) + obj_adhoc_scripts.yincrementor_stars[2]);
		obj_adhoc_scripts.yincrementor_stars[3] += obj_adhoc_scripts.yspeed_stars[3] * player_velocity
		layer_y(layerid_space_layer3, (cameraposy) + obj_adhoc_scripts.yincrementor_stars[3]);
	}

	
	
	
	
	
	//gets the players ofset from the floor
	var y_offset = (obj_player.startpos[1] - obj_player.y) * 0.1
	
	//no need for these incrementers anymore
	/*
	obj_adhoc_scripts.yincrementor_lvlbg[0] += player_velocity * -1.01
	obj_adhoc_scripts.yincrementor_lvlbg[1] += player_velocity * 0
	obj_adhoc_scripts.yincrementor_lvlbg[2] += player_velocity * 1.01
	obj_adhoc_scripts.yincrementor_glow += obj_adhoc_scripts.yspeed_glow * player_velocity*/
	//layer_y(layerid_lvlbg, (obj_player.y - startdiff_lvlbgy) + obj_adhoc_scripts.yincrementor_lvlbg);
    
	//set the horrizon of level
	if(room_get_name(room) =  "rm_lvl1_kupler" || room_get_name(room) =  "rm_lvl2_kupler")
	{ 
		var horrizonbase = (view_hport[0] - 250) - 80; 
		var horrizon = cameraposy + horrizonbase;
		var glowheight = horrizon-250
		var stardustheight = horrizon-100
	}
	else if (room_get_name(room) = "something"){}
	else
	{
		horrizonbase = 0; 
		horrizon = (cameraposy + horrizonbase);
		glowheight = 0
		stardustheight = obj_player.y - startdiff_stardusty
	}
	
	var bg_start_y = horrizon + 30 // (horrizon + obj_adhoc_scripts.yincrementor_lvlbg[0])+ 30
	var bg3_start_y = horrizon - 30 // (horrizon + obj_adhoc_scripts.yincrementor_lvlbg[0])+ 30
	layer_y(layerid_lvlbg, lerp(bg_start_y ,bg_start_y + y_offset  , 0.5)) ;
	layer_y(layerid_lvlbg_2, (horrizon /*+ obj_adhoc_scripts.yincrementor_lvlbg[1]*/));
	layer_y(layerid_lvlbg_3, lerp(bg3_start_y ,bg3_start_y - y_offset  , 0.5)) ;//(horrizon + obj_adhoc_scripts.yincrementor_lvlbg[2]) - 70);
	layer_y(layerid_glow, glowheight /*+ obj_adhoc_scripts.yincrementor_glow*/ );
	layer_y(layerid_stardust, stardustheight);



	//paralax scrolling
	parallax_scrolling()

}


///////////////////////////LOOP THE BACKGROUND//////////////////////////////////////////
//loop the backgrounds by figuring out the modulo and the dif between player.x at point of loop and asset size
if(obj_player.loop_lvl[1] > 0)
{
	////////////////BG/////////////////////////////////////////////////////////////// 
	var xmodulo_lvlbg = obj_player.loop_lvl[1] % sprite_get_width(spr_kuplerbg)
	var xdivide_lvlbg = obj_player.loop_lvl[1] / sprite_get_width(spr_kuplerbg)
	
	var xmodulo_lvlbg_2 = obj_player.loop_lvl[1] % sprite_get_width(spr_kuplerbg_2)
	var xdivide_lvlbg_2 = obj_player.loop_lvl[1] / sprite_get_width(spr_kuplerbg_2)
	
	var xmodulo_lvlbg_3 = obj_player.loop_lvl[1] % sprite_get_width(spr_kuplerbg_3)
	var xdivide_lvlbg_3 = obj_player.loop_lvl[1] / sprite_get_width(spr_kuplerbg_3)
	
	obj_adhoc_scripts.xincrementor_lvlbg[0] = ((obj_player.x - xmodulo_lvlbg) + xdivide_lvlbg) + layerid_lvlbgx;
	layer_x(layerid_lvlbg, obj_adhoc_scripts.xincrementor_lvlbg[0]);
	
	
	
	obj_adhoc_scripts.xincrementor_lvlbg[1] = ((obj_player.x - xmodulo_lvlbg_2) + xdivide_lvlbg_2) + layerid_lvlbgx_2;
	layer_x(layerid_lvlbg_2, obj_adhoc_scripts.xincrementor_lvlbg[1]);
	
	
	
	obj_adhoc_scripts.xincrementor_lvlbg[2] = ((obj_player.x - xmodulo_lvlbg_3) + xdivide_lvlbg_3) + layerid_lvlbgx_3;
	layer_x(layerid_lvlbg_3, obj_adhoc_scripts.xincrementor_lvlbg[2]);
	
	
	//////////////////////////////////STAR LAYERS////////////////////////////////////////////////
	var xmodulo_space = obj_player.loop_lvl[1] % sprite_get_width(spr_space)
	var xdivide_space = obj_player.loop_lvl[1] / sprite_get_width(spr_space)
	
	var xmodulo_space_layer0 = obj_player.loop_lvl[1] % sprite_get_width(spr_starslay1)
	var xdivide_space_layer0 = obj_player.loop_lvl[1] / sprite_get_width(spr_starslay1)
	
	var xmodulo_space_layer1 = obj_player.loop_lvl[1] % sprite_get_width(spr_starslay2)
	var xdivide_space_layer1 = obj_player.loop_lvl[1] / sprite_get_width(spr_starslay2)
	
	var xmodulo_space_layer2 = obj_player.loop_lvl[1] % sprite_get_width(spr_starslay3)
	var xdivide_space_layer2 = obj_player.loop_lvl[1] / sprite_get_width(spr_starslay3)
	
	var xmodulo_space_layer3 = obj_player.loop_lvl[1] % sprite_get_width(spr_starslay4)
	var xdivide_space_layer3 = obj_player.loop_lvl[1] / sprite_get_width(spr_starslay4)
	

	var offset = 32/2 //i dont know why but adding this offset works it seems to be block size devided by 2
	obj_adhoc_scripts.xincrementor_stars[0] = (((obj_player.x - offset) - xmodulo_space_layer0) + xdivide_space_layer0) + layerid_spacex_layer0
	layer_x(layerid_space_layer0, obj_adhoc_scripts.xincrementor_stars[0]);


	obj_adhoc_scripts.xincrementor_stars[1] = (((obj_player.x- offset) - xmodulo_space_layer1) + xdivide_space_layer1) + layerid_spacex_layer1
	layer_x(layerid_space_layer1, obj_adhoc_scripts.xincrementor_stars[1]);
	
	obj_adhoc_scripts.xincrementor_stars[2] = (((obj_player.x- offset) - xmodulo_space_layer2) + xdivide_space_layer2) + layerid_spacex_layer2
	layer_x(layerid_space_layer2, obj_adhoc_scripts.xincrementor_stars[2]);
	
	obj_adhoc_scripts.xincrementor_stars[3] = (((obj_player.x- offset) - xmodulo_space_layer3) + xdivide_space_layer3) + layerid_spacex_layer3
	layer_x(layerid_space_layer3, obj_adhoc_scripts.xincrementor_stars[3]);
	
	
	
	
	
	obj_player.loop_lvl[1] = -1
}
