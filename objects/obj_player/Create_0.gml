/// @description Insert description here
// You can write your code in this editor

player_horizontal_speed = 8;
max_player_horizontal_speed = 20;
player_vertical_speed = 0;
max_player_vertical_speed = 20;
jump_impulse = 21;
max_jump_height = 50 

mid_jump = false;

player_dying = false;
in_tubble = false;

//tiles
var collision_layer = layer_get_id("layer_collision");
tile_map = layer_tilemap_get_id(collision_layer);


//gears
gear1 = true;
gear2 = false;
gear3 = false;

//for the camera shake
shake = 0;



//new jump
velocity = [0, 0];
acceleration = [0,0]; 
max_velocity = [8,20];
min_velocity = [-10,-2000];


player_runspeed = [1, 0]
player_jumpspeed = [0, 0]
world_gravity = [0,0.75];
world_wind = [0.0, 0.0];




////dialog
//global.branch = 1; 
//global.dialog = [];
//global.dialog_line = 0;

////nononono =
//add_dialog("So","blah","",false,true);
//add_dialog("You got issued a jump suit","blah","",false, true); 
//add_dialog("How lucky! lets make sure you know how to use it","blah","",false, true);
////add_dialog("Why, Why must you be here to!", true);
////yo_lol =
//add_dialog("im trying to talk to Neil here, must you butt in after everything i say", "just trying to advance the conversation","",false,true);
//add_dialog("cant you do that with less noise", ".....","",false,true);
//add_dialog("Thank you!", true);
//add_dialog("Now lets make sure everyone knows how to use the suit", true);
//add_dialog("Excellent! Lets begin", true);
//add_dialog("...okay", true);

//show_message(global.dialog)

//start_dialog(0)

var instinct_text =[["blah", "Dont need to", "Sorry, im moving you along mostely", "........"],
					["lol i said no", "fine"]]
