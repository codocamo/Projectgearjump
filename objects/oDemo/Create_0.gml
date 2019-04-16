/// @description Settings
image_speed = 0.5;
DissolveAmount = 0;
col1 = make_color_rgb(0.8*255,0,0);
col2 = make_color_rgb(255,0.55*255,0);

//Call this once in your object before using the shader script
col1 = make_color_rgb(0.8*255,0,0);
col2 = make_color_rgb(255,0.55*255,0);
DissolveSettings(mask1,0,col1,col2,0.1);

//Other examples modified using instance creation code in the room editor


_uniTime  = shader_get_uniform(shdVCR, "u_time");
time = 0