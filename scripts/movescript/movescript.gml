//@description acceleration[] max velocity[]
//location - where the object is
//velocity - the direction and speed the object is going
//acceleration - the rate the velocity gets aplied to location
//other forces  

var location = [x, y];

acceleration[0] = world_gravity[0] + world_wind[0] + player_runspeed[0] //+ player_jumpspeed[0]
acceleration[1] = world_gravity[1] + world_wind[1] + player_runspeed[1]	//+ player_jumpspeed[1]


if(velocity[0] >= max_velocity[0]){velocity[0] = max_velocity[0]}
else if (velocity[0] <= min_velocity[0]){velocity[0] = min_velocity[0]}
else {velocity[0] = velocity[0] +  acceleration[0]}

if(velocity[1] >= max_velocity[1]){velocity[1] = max_velocity[1]}
else if (velocity[1] <= min_velocity[1]){velocity[1] = min_velocity[1]}
else {velocity[1] = velocity[1] +  acceleration[1]}


show_debug_message(string(min_velocity[1])+ " " + string(velocity[1]) + " " + string(world_gravity[1]) + " " + string(acceleration[1]) )	
	return [location[0] +  velocity[0],location[1] +  velocity[1]]
	