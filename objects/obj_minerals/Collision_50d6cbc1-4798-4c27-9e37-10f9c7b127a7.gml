/// @description Insert description here
// You can write your code in this editor

ini_open("savedata.ini")
ini_write_real(room_get_name(room), global.mineralcount[0]+1, id)
ini_close()





collided = true; 
safetyboolean = false;
