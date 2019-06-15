/// @description Insert description here
// You can write your code in this editor
//jump switch timer

//block_snd = false;
//obj_soundcontroller.level_music_switch = true

audio_sound_gain(snd_atmos_1,0,6000)

music_playing = audio_play_sound(current_level_music, 1000, true)
audio_sound_gain(current_level_music,0,0);
audio_sound_gain(current_level_music,msc_default_gain,6000)

