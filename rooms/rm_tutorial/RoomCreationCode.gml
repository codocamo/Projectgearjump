//create the player
instance_create_depth(13, 368, 100, obj_player);

//create check point object
instance_create_depth(0, 0, 0, obj_chkpt);

//create level switcher object
instance_create_depth(0, 0, 0, obj_levelswitcher);


//show_message(room_get_name(room) + "_branch_" + string(global.branch))
//set branch
global.branch = 1
//add the dialog for the level
dialog_adder(room_get_name(room) + "_branch_" + string(global.branch));
//start the dialog
start_dialog(0)