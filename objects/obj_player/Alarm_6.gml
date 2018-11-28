/// @description Insert description here
// You can write your code in this editor

		gear_change_count = 0
	
		start_cooldown = [false,false]; 
		gear1limitunlock = true; 
		gear2limitunlock = true; 
		gear3limitunlock = true; 
	
		
		max_velocity[0] = 8;
		
		image_speed = 1
		
		if (reboot_help[1])
		{
			reboot_help[0] = true
			reboot_help[1] = false
			with(obj_vfxmanager)
			{
				alarm[1] = 600
			}
		}