//activating the shader

BktGlitch_init(); 

//if (os_device == os_macosx){
//	shader_set(shdBktGlitchMac);
//}else{

shader_set(shdBktGlitch);
//}

//setting the resolution
BktGlitch_set_resolution_of_application_surface();

//passing time to the shader (making sure nothing stays static)
BktGlitch_set_time(current_time * 0.06);

//quickly setting all parameters at once using a preset
BktGlitch_config_preset(BktGlitchPreset.C);

//additional tweaking
BktGlitch_set_jumbleness(0.25);
BktGlitch_set_jumble_speed(.25);
BktGlitch_set_jumble_resolution(random_range(0.1, 0.2));
//BktGlitch_set_jumble_shift(random_range(0.2, 0.4));
BktGlitch_set_jumble_shift(random_range(3, 4));
BktGlitch_set_channel_shift(0.01);
BktGlitch_set_channel_dispersion(0.1);
BktGlitch_set_rng_seed(0.5);

//BktGlitch_set_intensity(0.05 + ballHit); //adding additional intensity when the ball bounces!
BktGlitch_set_intensity(0.015+argument4); //adding additional intensity when the ball bounces!


//drawing sprite
draw_sprite(argument0,argument1,argument2,argument3);

//done using the shader
shader_reset();
