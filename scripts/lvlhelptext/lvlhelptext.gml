if(room_get_name(room) == "rm_lvl1_kupler")
{

	switch(chkpt)
	{
		case 1: start_dialog(0); obj_player.lvlhelptxt = true; break;
		case 2: obj_dialogcontroller.advance_dialog = true; break;
		case 3: obj_player.lvlhelptxt = false; break;
		case 4: obj_dialogcontroller.advance_dialog = true; obj_player.lvlhelptxt = true; break;
	}

} 
