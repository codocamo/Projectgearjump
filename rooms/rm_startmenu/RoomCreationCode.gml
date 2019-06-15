
//create level manager
instance_create_depth(0, 0, 0, obj_levelmanager);
//move the logo
instance_create_depth(0, 0, 0, obj_startmenumanager);
//create the music
if (!instance_exists(obj_soundcontroller)){instance_create_depth(0, 0, 0, obj_soundcontroller);}


randomize();

//show_message(display_get_sleep_margin())


//create glitch shader object
instance_create_depth(0, 0, 500, obj_glitchshadercontrol);



/*if(display_aa > 12)
{
	display_reset(8,false);
}
else if (display_aa > 6)
{
	display_reset(4,false);
}
else*/ if (display_aa > 2)
{
	display_reset(2,false);
}
