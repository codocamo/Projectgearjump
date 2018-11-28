/// @description Fade in pause music
// You can write your code in this editor



if(audio_sound_get_gain(msc_pausemusic) < 0.5)
{
	audio_sound_gain(msc_pausemusic, 0.6 , 100000)
}
else
{
	
}