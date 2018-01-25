
var layerid_lvlbg = layer_get_id("Backgrounds_bg") 
var layerid_glow = layer_get_id("Backgrounds_glow") 
var layerid_stardust = layer_get_id("Backgrounds_stardust") 
var layerid_space = layer_get_id("Background_space") 

var layerid_lvlbgy = layer_get_y(layerid_lvlbg)
var layerid_glowy = layer_get_y(layerid_glow)
var layerid_stardusty = layer_get_y(layerid_stardust)
var layerid_spacey = layer_get_y(layerid_space)


var pvelocity = obj_player.velocity[1]

if (once)
{
	startdiff_lvlbgy = obj_player.y - layerid_lvlbgy
	startdiff_glowy = obj_player.y - layerid_glowy
	startdiff_stardusty = obj_player.y - layerid_stardusty
	startdiff_spacey = obj_player.y - layerid_spacey
	once = false
	//show_debug_message(string(startdiff))
}
layer_y(layerid_lvlbg, obj_player.y - startdiff_lvlbgy);
layer_y(layerid_glow, obj_player.y - startdiff_glowy);
layer_y(layerid_stardust, obj_player.y - startdiff_stardusty);
layer_y(layerid_space, obj_player.y - startdiff_spacey);


