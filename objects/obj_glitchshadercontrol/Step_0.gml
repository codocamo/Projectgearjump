if(instance_exists(obj_player))
{
	if(obj_player.gear_change_count != 0 || intensity < obj_player.gear_change_count/20 )
	{
		intensity = obj_player.gear_change_count/30
		decrease = .01
	}
	
	if(obj_player.start_cooldown[0])
	{
		//intensity += .04
		intensity = .5
		decrease = .03
	}


}


intensity = max(0, intensity - decrease);

if(keyboard_check_pressed(ord("Q")))
{
	intensity  = 1
}

