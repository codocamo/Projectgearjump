/// @description Insert description here
// You can write your code in this editor
var layer_id  = layer_get_id("bkg_logo");
var back_id = layer_background_get_id(layer_id);
var sprite_id = layer_background_get_sprite(back_id)

incrementor += 1
var ypos = layer_get_y(layer_id) + (2 * sin(incrementor / 13))

layer_y(layer_id, ypos)