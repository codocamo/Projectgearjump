
var layerid_lvlbg = layer_get_id("Backgrounds_bg") 
var layerid_stardust = layer_get_id("Backgrounds_stardust") 
var layerid_space = layer_get_id("Background_space") 

var layerid_stardusty = layer_get_y(layerid_stardust)
var layerid_spacey = layer_get_y(layerid_space)

var layerid_lvlbgy = layer_get_y(layerid_lvlbg)
var pvelocity = obj_player.velocity[1]


//show_debug_message(obj_player.velocity[1]);
if (obj_player.velocity[1] > 0) // downwards
{
	lastydown = 0;
	once = true;
	
	layer_y(layerid_lvlbg, layerid_lvlbgy + obj_player.velocity[1]);
	layer_y(layerid_stardust, layerid_stardusty + obj_player.velocity[1]);
	layer_y(layerid_space, layerid_spacey + obj_player.velocity[1]);
	lastydown = obj_player.velocity[1]
	show_debug_message(string(lastydown)+ " " + string(layerid_lvlbgy) +" ")
	
}
else if (obj_player.velocity[1] < 0)
{
	//lastydown = 0;
	//once = true;
	
	layer_y(layerid_lvlbg, layerid_lvlbgy + obj_player.velocity[1]);
	layer_y(layerid_stardust, layerid_stardusty + obj_player.velocity[1]);
	layer_y(layerid_space, layerid_spacey + obj_player.velocity[1]);
	

	if(obj_player.velocity[1] < -10)
	{
		//lastydown = obj_player.velocity[1]
	}
	
	show_debug_message(string(obj_player.velocity[1])+ " " + string(layerid_lvlbgy) +" ")
	
	//show_debug_message(string(lasty));
}
else if (once && obj_player.velocity[1] = 0)
{
	//layer_y(layerid_lvlbg, layer_get_y(layerid_lvlbg) + (lastydown-17));
	once = false;
	show_debug_message(string(lastydown) + " " + string(layerid_lvlbgy) +" "+ string(layer_get_y(layerid_lvlbg)));
}