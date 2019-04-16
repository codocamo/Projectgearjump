//create the player
//instance_create_depth(200, 1200, 910, obj_player);
instance_create_depth(0, 0, 450, obj_player);

//set branch
global.branch = 0;

//create the check point object
instance_create_depth(0, 0, 0, obj_chkpt);

//create the level switcher object
instance_create_depth(0, 0, 0, obj_levelswitcher);


//create the adhoc script object to run all adhoc scripts
instance_create_depth(0, 0, 0, obj_adhoc_scripts);

//sets the level song
//obj_soundcontroller.level_music_switch = true




//create glitch shader object
instance_create_depth(0, 0, 500, obj_glitchshadercontrol);

//create pause object
instance_create_depth(0, 0, 0, obj_paused);
obj_paused.canpause = true