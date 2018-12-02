

//create the player
instance_create_depth(13, 368, 100, obj_player);


//create check point object
instance_create_depth(0, 0, 0, obj_chkpt);


//create level switcher object
instance_create_depth(0, 0, 0, obj_levelswitcher);

//create the adhoc script object to run all adhoc scripts
instance_create_depth(0, 0, 0, obj_adhoc_scripts);

//create the adhoc script object to run all adhoc scripts
//instance_create_depth(0, 0, 850, obj_ornamentmanager);


//show_message(room_get_name(room) + "_branch_" + string(global.branch))
//set branch
global.branch = 1
//add the dialog for the level
dialog_adder(room_get_name(room) + "_branch_" + string(global.branch));
//start the dialog
start_dialog(0)

//sets the level song
obj_soundcontroller.level_music_switch = true

//create glitch shader object
instance_create_depth(0, 0, 500, obj_glitchshadercontrol);

//create pause object
instance_create_depth(0, 0, 0, obj_paused);
obj_paused.canpause = true