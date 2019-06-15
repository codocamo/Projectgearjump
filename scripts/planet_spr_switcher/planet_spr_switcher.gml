switch(obj_levelswitcher.planetiterator)
{
	case 1: 
	{
		switch(obj_levelswitcher.leveliterator)
		{
			case 1:layer_sprite_change(obj_levelswitcher.planetlayerspriteid, spr_kupler); break;
			case 2:layer_sprite_change(obj_levelswitcher.planetlayerspriteid, spr_kupler_2); break;
		}
	} break;
	
	case 2: 
	{
		switch(obj_levelswitcher.leveliterator)
		{
			case 1:layer_sprite_change(obj_levelswitcher.planetlayerspriteid, spr_pluto); break;
			case 2:layer_sprite_change(obj_levelswitcher.planetlayerspriteid, spr_pluto_2); break;
		}
	} break;
	
}