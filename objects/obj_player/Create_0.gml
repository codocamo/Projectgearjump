/// @description Insert description here
// You can write your code in this editor

//y = 368 if(room_get_name("rm_lvl1_kupler")){y = 1728}
//x = 13 if(room_get_name("rm_lvl1_kupler")){x = 20}
//x = 20
playerout = false;

player_horizontal_speed = 8;
max_player_horizontal_speed = 20;
player_vertical_speed = 0;
max_player_vertical_speed = 20;
jump_impulse = 21;
max_jump_height = 50 

mid_jump = false;

player_dying = false;
in_tumble = false;
start_run_anim = true; 

tumble = false;
burn = false;
fullburn = false;

cameramove = false;
cameraposx = 0;
cameraposy = 0;


stopjumping = false;
airtime = false;

player_y_at_trigger = -100000;

//tiles
var collision_layer = layer_get_id("layer_collision");
tile_map = layer_tilemap_get_id(collision_layer);


//gears
gear1 = false;
gear2 = false;
gear3 = false;



gear1limitunlock = true; if(room_get_name(room) == "rm_tutorial" || room_get_name(room) == "rm_pre_tutorial"){gear1limitunlock = false;}
gear2limitunlock = true; if(room_get_name(room) == "rm_tutorial" || room_get_name(room) == "rm_pre_tutorial"){gear2limitunlock = false;}
gear3limitunlock = true; if(room_get_name(room) == "rm_tutorial" || room_get_name(room) == "rm_pre_tutorial"){gear3limitunlock = false;}
jumplimitunlock = true; if(room_get_name(room) == "rm_tutorial" || room_get_name(room) == "rm_pre_tutorial"){jumplimitunlock = false;}

//for the camera shake
shake = 0;



//new jump
velocity = [0, 0];
acceleration = [0,0]; 
//max_velocity = [8,20];
max_velocity = [8,30];
min_velocity = [-10,-2000];


player_runspeed = [1, 0]
player_jumpspeed = [0, 0]
world_gravity = [0,2];
world_wind = [0.0, 0.0];




//stuff
camera_offest_counter = 0;
alarm1set = true;
alarm2set = true;

advancetonextlvl = false;


loop_lvl = [false, -1];
loop_xpos = [-1,-1]

tile_4_locked = false;

pkupslidestate = false;
inslide = false;
canstand = true;
slidehelp = true;