//@description acceleration[] max velocity[]
//@param acceleration
//@param max_velocity
//TODO take params as globl vars write velocity back out 

var location = [x, y];
//var velocity = [0,0]; if(argument_count >= 1){velocity = argument[0]}
//var acceleration = [0,0]; if(argument_count >= 2){acceleration = argument[1]};
//var max_velocity = [0,0]; if(argument_count >= 3){max_velocity = argument[2]};

show_debug_message("YOYOYOYOY " + string(velocity[0]) )

if((max_velocity[0] >= velocity[0]))
{
	velocity[0] = velocity[0] +  acceleration[0]
	
}

if((max_velocity[1] >= velocity[1]))
{
	
	velocity[1] = velocity[1] +  acceleration[1]
	
}

	return [location[0] +  velocity[0],location[1] +  velocity[1]]