//create the player
instance_create_depth(200, 1327, 100, obj_player);

//set branch
global.branch = 0;

//create the check point object
instance_create_depth(0, 0, 0, obj_chkpt);

//create the level switcher object
instance_create_depth(0, 0, 0, obj_levelswitcher);


