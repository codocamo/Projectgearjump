//////////////////LAYER ID//////////////////////////
var layerid_lvlbg = layer_get_id("Backgrounds_bg") 
var layerid_glow = layer_get_id("Backgrounds_glow") 
var layerid_stardust = layer_get_id("Backgrounds_stardust") 
var layerid_space = layer_get_id("Background_space") 
var layerid_space_layer0 = layer_get_id("Background_space_1") 
var layerid_space_layer1 = layer_get_id("Background_space_2")
var layerid_space_layer2 = layer_get_id("Background_space_3")
var layerid_space_layer3 = layer_get_id("Background_space_4")
/////////////////////////LAYER Y////////////////////
var layerid_lvlbgy = layer_get_y(layerid_lvlbg)
var layerid_glowy = layer_get_y(layerid_glow)
var layerid_stardusty = layer_get_y(layerid_stardust)
var layerid_spacey = layer_get_y(layerid_space)
var layerid_spacey_layer0 = layer_get_y(layerid_space_layer0)
var layerid_spacey_layer1 = layer_get_y(layerid_space_layer1)
var layerid_spacey_layer2 = layer_get_y(layerid_space_layer2)
var layerid_spacey_layer3 = layer_get_y(layerid_space_layer3)
///////////////////////LAYER X///////////////////
var layerid_lvlbgx = layer_get_x(layerid_lvlbg)
var layerid_glowx = layer_get_x(layerid_glow)
var layerid_stardustx = layer_get_x(layerid_stardust)
var layerid_spacex = layer_get_x(layerid_space)
var layerid_spacex_layer0 = layer_get_x(layerid_space_layer0)
var layerid_spacex_layer1 = layer_get_x(layerid_space_layer1)
var layerid_spacex_layer2 = layer_get_x(layerid_space_layer2)
var layerid_spacex_layer3 = layer_get_x(layerid_space_layer3)

if (obj_levelswitcher.animatedown){var player_velocity = obj_player.max_velocity[1]}
else if (obj_levelswitcher.animateup){var player_velocity = obj_player.max_velocity[1] * -1}
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

	
	
	
	
	obj_adhoc_scripts.yspeed_lvlbg = 0.0
	obj_adhoc_scripts.yspeed_glow = 0.0
	obj_adhoc_scripts.yincrementor_lvlbg += obj_adhoc_scripts.yspeed_lvlbg * player_velocity
	obj_adhoc_scripts.yincrementor_glow += obj_adhoc_scripts.yspeed_glow * player_velocity
	//layer_y(layerid_lvlbg, (obj_player.y - startdiff_lvlbgy) + obj_adhoc_scripts.yincrementor_lvlbg);
    
	//set the horrizon of level
	if(room_get_name(room) =  "rm_lvl1_kupler" || room_get_name(room) =  "rm_lvl2_kupler")
	{ 
		var horrizonbase = (view_hport[0] - 250) - 200; 
		var horrizon = cameraposy + horrizonbase;
		var glowheight = horrizon-20
		var stardustheight = horrizon-150
	}
	else if (room_get_name(room) = "something"){}
	else
	{
		horrizonbase = 0; 
		horrizon = (cameraposy + horrizonbase);
		glowheight = 0
		stardustheight = obj_player.y - startdiff_stardusty
	}
	layer_y(layerid_lvlbg, horrizon + obj_adhoc_scripts.yincrementor_lvlbg);
	layer_y(layerid_glow, glowheight + obj_adhoc_scripts.yincrementor_glow );
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
	
	obj_adhoc_scripts.xincrementor_lvlbg = ((obj_player.x - xmodulo_lvlbg) + xdivide_lvlbg) + layerid_lvlbgx;
	layer_x(layerid_lvlbg, obj_adhoc_scripts.xincrementor_lvlbg);
	
	
	
	
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
	


	obj_adhoc_scripts.xincrementor_stars[0] = ((obj_player.x - xmodulo_space_layer0) + xdivide_space_layer0) + layerid_spacex_layer0
	layer_x(layerid_space_layer0, obj_adhoc_scripts.xincrementor_stars[0]);

	obj_adhoc_scripts.xincrementor_stars[1] = ((obj_player.x - xmodulo_space_layer1) + xdivide_space_layer1) + layerid_spacex_layer1
	layer_x(layerid_space_layer1, obj_adhoc_scripts.xincrementor_stars[1]);
	
	obj_adhoc_scripts.xincrementor_stars[2] = ((obj_player.x - xmodulo_space_layer2) + xdivide_space_layer2) + layerid_spacex_layer2
	layer_x(layerid_space_layer2, obj_adhoc_scripts.xincrementor_stars[2]);
	
	obj_adhoc_scripts.xincrementor_stars[3] = ((obj_player.x - xmodulo_space_layer3) + xdivide_space_layer3) + layerid_spacex_layer3
	layer_x(layerid_space_layer3, obj_adhoc_scripts.xincrementor_stars[3]);
	
	obj_player.loop_lvl[1] = -1
}
