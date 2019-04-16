

time += 1 / room_speed;
shader_set(shdGlitchST)
shader_set_uniform_f(_uniTime, time);
draw_sprite(argument0, argument1, argument2, argument3);
shader_reset() 