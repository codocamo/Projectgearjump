var intro_length = 0
var loop_length = 0
var total_length = 0
var current_position =0

switch(current_level_music)
{
	case msc_titletheme: 
	{
		var intro_length = 4.770; var loop_length = 19.235; var total_length = intro_length + loop_length;
		var current_position = audio_sound_get_track_position(music_playing);
		if (audio_sound_get_track_position(music_playing) > total_length)
		{
			var current_position = audio_sound_get_track_position(music_playing);
			audio_sound_set_track_position(music_playing, current_position - loop_length);
		}
	};
		break;
}
