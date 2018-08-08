/// @description Insert description here
// You can write your code in this editor

//file_delete("savedata.ini")

//for (var i = 0; i < instance_count; i ++;)
//{
//   show_debug_message("instance" + string(i)+" "+string(instance_id[i]))
//}
//show_debug_message(instance_count)
//  show_debug_message(instance_number(obj_minerals))



instance_counter = instance_number(obj_minerals); 

global.mineralcount = [0,instance_counter]

ini_open("savedata.ini")
if(ini_section_exists(room_get_name(room)))
{
	for(i = 1; i <= instance_counter; i+=1)
	{
		if(ini_key_exists(room_get_name(room), i))
		{
			var object_instance = ini_read_real(room_get_name(room), i, 0)
			instance_destroy(object_instance)
			global.mineralcount[0] += 1
			
		}
	}
}
ini_close()

