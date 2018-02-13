/// @description Insert description here
// You can write your code in this editor

if(level_music_switch)
{
	switch(room_get_name(room))
	{
		case "rm_lvl1_kupler": audio_stop_all(); current_level_music = msc_lvl1kupler; audio_play_sound(current_level_music, 1000, true); break;
		//case "rm_tutorial": current_level_music = msc_pretutorial; audio_play_sound(current_level_music, 1000, true); break;
		case "rm_pre_tutorial": audio_stop_all(); current_level_music = msc_pretutorial; audio_play_sound(current_level_music, 1000, true); break;
		case "rm_startmenu": audio_stop_all(); current_level_music = msc_pretutorial; audio_play_sound(current_level_music, 1000, true); break;
		//case "rm_endoflevel": audio_stop_all(); break;
	}
	level_music_switch = false;
}




if(instance_exists(obj_player))
{
	//--------------------JUMP CHANGE SOUND----------------------------------------------------------
	if(play_switch_snd_1  && !audio_is_playing(snd_jchange1))
	{
		audio_play_sound(snd_jchange1, 10, false);
		//audio_stop_sound(snd_jchange2)
		//audio_stop_sound(snd_jchange3)
		play_switch_snd_1 = false;
		//block_snd = true;
		//alarm[0]=20
	}
	if(play_switch_snd_2 && !audio_is_playing(snd_jchange2))
	{
		audio_play_sound(snd_jchange2, 10, false); 
		//audio_stop_sound(snd_jchange1)
		//audio_stop_sound(snd_jchange3)
		play_switch_snd_2 = false;
		//block_snd = true;
		//alarm[0]=20
	}
	if(play_switch_snd_3 && !audio_is_playing(snd_jchange3))
	{
		audio_play_sound(snd_jchange3, 10, false);
		//audio_stop_sound(snd_jchange2)
		//audio_stop_sound(snd_jchange1)
		play_switch_snd_3 = false;
		//block_snd = true;
		//alarm[0]=20
	}
	
	//----------------------IN TUMBLE SOUND--------------------------------------------
	if(obj_player.in_tumble)
	{
		//audio_stop_sound(current_level_music)
		audio_sound_gain(current_level_music, 0, 300)
		if(obj_player.burn)
		{
			audio_play_sound(snd_entryburn, 10, false);
		}
	}
	
	
	if(obj_levelswitcher.drawleveldetails)
	{
		audio_pause_sound(snd_entryburn)
	}
	else if(obj_levelswitcher.whiteflash)
	{
		audio_resume_sound(snd_entryburn)

	}
	
	
	//-------------------JUMP SOUND-------------------------------------
	if (stop_jump_snd)
	{
		
		audio_stop_sound(snd_jump1);
		audio_stop_sound(snd_jump2);
		audio_stop_sound(snd_jump3);
		stop_jump_snd = false
	}
	if(play_jump_snd_1 && !audio_is_playing(snd_jump1) && !obj_player.stopjumping)
	{
		audio_play_sound(snd_jump1, 10, false);
		play_jump_snd_1 = false;
	}
	else if(play_jump_snd_2 && !audio_is_playing(snd_jump2) && !obj_player.stopjumping)
	{
		
		audio_play_sound(snd_jump2, 10, false);
		play_jump_snd_2 = false;
	}
	else if(play_jump_snd_3 && !audio_is_playing(snd_jump3) && !obj_player.stopjumping)
	{
		audio_play_sound(snd_jump3, 10, false);
		play_jump_snd_3 = false;
	}

}