
var layerid_lvlbg = layer_get_id("Backgrounds_bg") 
var layerid_glow = layer_get_id("Backgrounds_glow") 
var layerid_stardust = layer_get_id("Backgrounds_stardust") 
var layerid_space = layer_get_id("Background_space") 

var layerid_lvlbgy = layer_get_y(layerid_lvlbg)
var layerid_glowy = layer_get_y(layerid_glow)
var layerid_stardusty = layer_get_y(layerid_stardust)
var layerid_spacey = layer_get_y(layerid_space)

var layerid_lvlbgx = layer_get_x(layerid_lvlbg)
var layerid_glowx = layer_get_x(layerid_glow)
var layerid_stardustx = layer_get_x(layerid_stardust)
var layerid_spacex = layer_get_x(layerid_space)

var pvelocity = obj_player.velocity[1]

if (bg_move_once)
{
	startdiff_lvlbgy = obj_player.y - layerid_lvlbgy
	startdiff_glowy = obj_player.y - layerid_glowy
	startdiff_stardusty = obj_player.y - layerid_stardusty
	startdiff_spacey = obj_player.y - layerid_spacey
	bg_move_once = false
	//show_debug_message(string(startdiff))
}
layer_y(layerid_lvlbg, obj_player.y - startdiff_lvlbgy);
layer_y(layerid_glow, obj_player.y - startdiff_glowy);
layer_y(layerid_stardust, obj_player.y - startdiff_stardusty);
layer_y(layerid_space, obj_player.y - startdiff_spacey);




//loop the backgrounds by figuring out the modulo and the dif between player.x at point of loop and asset size
if(obj_player.loop_lvl[1] > 0)
{
	
	var xmodulo_lvlbg = obj_player.loop_lvl[1] % sprite_get_width(spr_kuplerbg)
	var xdivide_lvlbg = obj_player.loop_lvl[1] / sprite_get_width(spr_kuplerbg)
	
	var xmodulo_space = obj_player.loop_lvl[1] % sprite_get_width(spr_space)
	var xdivide_space = obj_player.loop_lvl[1] / sprite_get_width(spr_space)
	
	
	layer_x(layerid_lvlbg, (obj_player.x - xmodulo_lvlbg) + xdivide_lvlbg);
	//layer_x(layerid_glow, (obj_player.x - xmodulo) + xdiff );
	//layer_x(layerid_stardust, (obj_player.x - xmodulo) + xdiff);
	layer_x(layerid_space, (obj_player.x - xmodulo_space) + xdivide_space);
	
	
	obj_player.loop_lvl[1] = -1
}
