
//create level manager
instance_create_depth(0, 0, 0, obj_levelmanager);
//move the logo
instance_create_depth(0, 0, 0, obj_logomove);
//create the music
if (!instance_exists(obj_soundcontroller)){instance_create_depth(0, 0, 0, obj_soundcontroller);}
//sets the level song
obj_soundcontroller.level_music_switch = true


randomize();

//show_message(display_get_sleep_margin())

