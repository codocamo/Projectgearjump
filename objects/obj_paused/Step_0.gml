/// @description Insert description here
// You can write your code in this editor

if(canpause)
{

if(keyboard_check_pressed(vk_escape)){
    paused = !paused;
	obj_soundcontroller.startpausemusic = !obj_soundcontroller.startpausemusic;
	
	
    if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
}



if(paused){
    instance_deactivate_all(true);
	//instance_deactivate_object(obj_player)
	instance_activate_object(obj_optionsButton)
	instance_activate_object(obj_muteButton)
	instance_activate_object(obj_controlsButton)
	instance_activate_object(obj_soundcontroller)
	instance_activate_object(obj_backButton)
	instance_activate_object(obj_quitButton)
	
	//obj_soundcontroller.startpausemusic = true
}else {
    if(sprite_exists(screenShot)){
        sprite_delete(screenShot);
    }
    instance_activate_all();
	instance_destroy(obj_optionsButton)
	instance_destroy(obj_muteButton)
	instance_destroy(obj_backButton)
	instance_destroy(obj_controlsButton)
	instance_destroy(obj_quitButton)
	
	//obj_soundcontroller.startpausemusic = false
	
	//instance_deactivate_object(obj_optionsButton)
	//instance_deactivate_object(obj_muteButton)
	//instance_deactivate_object(obj_controlsButton)
}



}