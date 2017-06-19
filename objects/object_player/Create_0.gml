/// @description Insert description here
// You can write your code in this editor

player_horizontal_speed = 8;
max_player_horizontal_speed = 20;
player_vertical_speed = 0;
max_player_vertical_speed = 20;
jump_impulse = 21;
max_jump_height = 50 
world_gravity = 0.75;
mid_jump = false;

player_dying = false;


//tiles
var collision_layer = layer_get_id("layer_collision");
tile_map = layer_tilemap_get_id(collision_layer);




//gears
gear1 = true;
gear2 = false;
gear3 = false;


