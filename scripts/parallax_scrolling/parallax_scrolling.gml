
var layerid_lvlbg = layer_get_id("Backgrounds_bg") 
var layerid_lvlbg_2 = layer_get_id("Backgrounds_bg_2") 
var layerid_lvlbg_3 = layer_get_id("Backgrounds_bg_3") 
var layerid_glow = layer_get_id("Backgrounds_glow") 
var layerid_stardust = layer_get_id("Backgrounds_stardust") 
var layerid_space_layer0 = layer_get_id("Background_space_1") 
var layerid_space_layer1 = layer_get_id("Background_space_2")
var layerid_space_layer2 = layer_get_id("Background_space_3")
var layerid_space_layer3 = layer_get_id("Background_space_4")
var layerid_space = layer_get_id("Background_space")

var layerid_lvlbgy = layer_get_y(layerid_lvlbg)
var layerid_lvlbgy_2 = layer_get_y(layerid_lvlbg_2)
var layerid_lvlbgy_3 = layer_get_y(layerid_lvlbg_3)
var layerid_glowy = layer_get_y(layerid_glow)
var layerid_stardusty = layer_get_y(layerid_stardust)
var layerid_spacey = layer_get_y(layerid_space)

var layerid_lvlbgx = layer_get_x(layerid_lvlbg)
var layerid_lvlbgx_2 = layer_get_x(layerid_lvlbg_2)
var layerid_lvlbgx_3 = layer_get_x(layerid_lvlbg_3)
var layerid_glowx = layer_get_x(layerid_glow)
var layerid_stardustx = layer_get_x(layerid_stardust)
var layerid_spacex = layer_get_x(layerid_space)


var player_velocitx = obj_player.velocity[0]
var player_velocity = obj_player.velocity[1]

//paralax scrolling

/////////////////////////////////////LVL BG//////////////////////////////////////////////
obj_adhoc_scripts.xspeed_lvlbg = [-0.0, -0.0, -0.0]

/////////x///////
obj_adhoc_scripts.xincrementor_lvlbg[0] += player_velocitx * 0.1  //obj_adhoc_scripts.xspeed_lvlbg * player_velocitx
layer_x(layerid_lvlbg, obj_adhoc_scripts.xincrementor_lvlbg[0]);

obj_adhoc_scripts.xincrementor_lvlbg[1] += player_velocitx * 0.7//obj_adhoc_scripts.xspeed_lvlbg * player_velocitx
layer_x(layerid_lvlbg_2, obj_adhoc_scripts.xincrementor_lvlbg[1]);

obj_adhoc_scripts.xincrementor_lvlbg[2] += player_velocitx //obj_adhoc_scripts.xspeed_lvlbg * player_velocitx
layer_x(layerid_lvlbg_3, obj_adhoc_scripts.xincrementor_lvlbg[2]);


/////////////////////////////////////////STARS//////////////////////////////////////////
obj_adhoc_scripts.xspeed_stars = [-0.1,-0.05,-0.03,-0.0]
if((room_get_name(room) = "rm_pre_tutorial") || (room_get_name(room) ="rm_tutorial") ){player_velocitx = (player_velocitx * 0.5)*-1}

/////////x///////
obj_adhoc_scripts.xincrementor_stars[0] += player_velocitx * 1.15 // / 3.5//obj_adhoc_scripts.xspeed_stars[0] * player_velocitx
layer_x(layerid_space_layer0, obj_adhoc_scripts.xincrementor_stars[0]);


obj_adhoc_scripts.xincrementor_stars[1] += player_velocitx * 1.3// /3 //obj_adhoc_scripts.xspeed_stars[1] * player_velocitx
layer_x(layerid_space_layer1, obj_adhoc_scripts.xincrementor_stars[1]);


obj_adhoc_scripts.xincrementor_stars[2] += player_velocitx * 1.55 // / 2.5//obj_adhoc_scripts.xspeed_stars[2] * player_velocitx
layer_x(layerid_space_layer2, obj_adhoc_scripts.xincrementor_stars[2]);


obj_adhoc_scripts.xincrementor_stars[3] += player_velocitx * 1.7 // /2//obj_adhoc_scripts.xspeed_stars[3] * player_velocitx
layer_x(layerid_space_layer3, obj_adhoc_scripts.xincrementor_stars[3]);


/////////////////////////////////////////STARDUST//////////////////////////////////////////
obj_adhoc_scripts.xspeed_stardust = 0
var offset  = 1000
obj_adhoc_scripts.xincrementor_stardust += player_velocitx /1.5//obj_adhoc_scripts.xspeed_stars[3] * player_velocitx
layer_x(layerid_stardust, obj_adhoc_scripts.xincrementor_stardust + offset);