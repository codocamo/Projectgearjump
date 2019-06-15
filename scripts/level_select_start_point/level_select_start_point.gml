switch(global.level_just_unlocked + "_" + room_get_name(room))
{
	case "rm_tutorial": obj_levelswitcher.planetiterator = 1; obj_levelswitcher.leveliterator = 1; break;
	case "rm_lvl1_kupler_rm_pre_tutorial": obj_levelswitcher.planetiterator = 1; obj_levelswitcher.leveliterator = 1; break;
	default: obj_levelswitcher.planetiterator = 1; obj_levelswitcher.leveliterator = 1; break;
}