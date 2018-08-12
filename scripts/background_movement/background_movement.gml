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
var layerid_spacey_layer0 = layer_get_x(layerid_space_layer0)
var layerid_spacey_layer1 = layer_get_x(layerid_space_layer1)
var layerid_spacey_layer2 = layer_get_x(layerid_space_layer2)
var layerid_spacey_layer3 = layer_get_x(layerid_space_layer3)
///////////////////////LAYER X///////////////////
var layerid_lvlbgx = layer_get_x(layerid_lvlbg)
var layerid_glowx = layer_get_x(layerid_glow)
var layerid_stardustx = layer_get_x(layerid_stardust)
var layerid_spacex = layer_get_x(layerid_space)
var layerid_spacex_layer0 = layer_get_x(layerid_space_layer0)
var layerid_spacex_layer1 = layer_get_x(layerid_space_layer1)
var layerid_spacex_layer2 = layer_get_x(layerid_space_layer2)
var layerid_spacex_layer3 = layer_get_x(layerid_space_layer3)


var player_velocity = obj_player.velocity[1]
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
	obj_adhoc_scripts.yspeed_lvlbg = 0.1
	obj_adhoc_scripts.yincrementor_lvlbg += obj_adhoc_scripts.yspeed_lvlbg * player_velocity
	layer_y(layerid_lvlbg, (obj_player.y - startdiff_lvlbgy) + obj_adhoc_scripts.yincrementor_lvlbg);

	obj_adhoc_scripts.yspeed_stars = [0.06,0.04,0.02,0.00]
	obj_adhoc_scripts.yincrementor_stars[0] += obj_adhoc_scripts.yspeed_stars[0] * player_velocity
	layer_y(layerid_space_layer0, (obj_player.y - startdiff_spacey) + obj_adhoc_scripts.yincrementor_stars[0]);
	obj_adhoc_scripts.yincrementor_stars[1] += obj_adhoc_scripts.yspeed_stars[1] * player_velocity
	layer_y(layerid_space_layer1, (obj_player.y - startdiff_spacey) + obj_adhoc_scripts.yincrementor_stars[1]);
	obj_adhoc_scripts.yincrementor_stars[2] += obj_adhoc_scripts.yspeed_stars[2] * player_velocity
	layer_y(layerid_space_layer2, (obj_player.y - startdiff_spacey) + obj_adhoc_scripts.yincrementor_stars[2]);
	obj_adhoc_scripts.yincrementor_stars[3] += obj_adhoc_scripts.yspeed_stars[3] * player_velocity
	layer_y(layerid_space_layer3, (obj_player.y - startdiff_spacey) + obj_adhoc_scripts.yincrementor_stars[3]);


	layer_y(layerid_glow, obj_player.y - startdiff_glowy);
	layer_y(layerid_stardust, obj_player.y - startdiff_stardusty);



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
