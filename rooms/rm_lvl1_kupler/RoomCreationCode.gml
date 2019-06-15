//create the player
//instance_create_depth(200, 1200, 910, obj_player);
instance_create_depth(0, 0, 450, obj_player);


//create the check point object
instance_create_depth(0, 0, 0, obj_chkpt);

//create the level switcher object
instance_create_depth(0, 0, 0, obj_levelswitcher);


//create the adhoc script object to run all adhoc scripts
instance_create_depth(0, 0, 0, obj_adhoc_scripts);

//sets the level song
obj_soundcontroller.level_music_switch = true


//set the branch of dialog
global.branch = 1
//add the dialog for the level
dialog_adder(global.level_just_unlocked + "_" + room_get_name(room) + "_branch_" + string(global.branch));


//create glitch shader object
instance_create_depth(0, 0, 500, obj_glitchshadercontrol);

//create pause object
instance_create_depth(0, 0, 0, obj_paused);
obj_paused.canpause = true
