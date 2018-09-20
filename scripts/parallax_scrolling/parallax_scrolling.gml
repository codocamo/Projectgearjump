
var layerid_lvlbg = layer_get_id("Backgrounds_bg") 
var layerid_glow = layer_get_id("Backgrounds_glow") 
var layerid_stardust = layer_get_id("Backgrounds_stardust") 
var layerid_space_layer0 = layer_get_id("Background_space_1") 
var layerid_space_layer1 = layer_get_id("Background_space_2")
var layerid_space_layer2 = layer_get_id("Background_space_3")
var layerid_space_layer3 = layer_get_id("Background_space_4")
var layerid_space = layer_get_id("Background_space")

var layerid_lvlbgy = layer_get_y(layerid_lvlbg)
var layerid_glowy = layer_get_y(layerid_glow)
var layerid_stardusty = layer_get_y(layerid_stardust)
var layerid_spacey = layer_get_y(layerid_space)

var layerid_lvlbgx = layer_get_x(layerid_lvlbg)
var layerid_glowx = layer_get_x(layerid_glow)
var layerid_stardustx = layer_get_x(layerid_stardust)
var layerid_spacex = layer_get_x(layerid_space)


var player_velocitx = obj_player.velocity[0]
var player_velocity = obj_player.velocity[1]

//paralax scrolling

/////////////////////////////////////LVL BG//////////////////////////////////////////////
obj_adhoc_scripts.xspeed_lvlbg = -0.2
obj_adhoc_scripts.xincrementor_lvlbg += obj_adhoc_scripts.xspeed_lvlbg * player_velocitx
layer_x(layerid_lvlbg, obj_adhoc_scripts.xincrementor_lvlbg);


/////////////////////////////////////////STARS//////////////////////////////////////////
obj_adhoc_scripts.xspeed_stars = [-0.1,-0.05,-0.03,-0.0]

/////////x///////
obj_adhoc_scripts.xincrementor_stars[0] += obj_adhoc_scripts.xspeed_stars[0] * player_velocitx
layer_x(layerid_space_layer0, obj_adhoc_scripts.xincrementor_stars[0]);


obj_adhoc_scripts.xincrementor_stars[1] += obj_adhoc_scripts.xspeed_stars[1] * player_velocitx
layer_x(layerid_space_layer1, obj_adhoc_scripts.xincrementor_stars[1]);


obj_adhoc_scripts.xincrementor_stars[2] += obj_adhoc_scripts.xspeed_stars[2] * player_velocitx
layer_x(layerid_space_layer2, obj_adhoc_scripts.xincrementor_stars[2]);


obj_adhoc_scripts.xincrementor_stars[3] += obj_adhoc_scripts.xspeed_stars[3] * player_velocitx
layer_x(layerid_space_layer3, obj_adhoc_scripts.xincrementor_stars[3]);


