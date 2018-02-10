//create the player
instance_create_depth(200, 1327, 550, obj_player);

//set branch
global.branch = 0;

//create the check point object
instance_create_depth(0, 0, 0, obj_chkpt);

//create the level switcher object
instance_create_depth(0, 0, 0, obj_levelswitcher);


//create the adhoc script object to run all adhoc scripts
instance_create_depth(0, 0, 0, obj_adhoc_scripts);
