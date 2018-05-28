/// @description Insert description here
// You can write your code in this editor
//Generated for GMS2 in Geon FX v1.0b
//Put this code in Create event

//Creating Particle System
ps = part_system_create();
part_system_depth(ps, -1);

//Creating Particle Types
//Effect1
global.pt_Effect1 = part_type_create();
part_type_shape(global.pt_Effect1, pt_shape_disk);
//part_type_sprite(global.pt_Effect1, spr_pt_shape_disk, 0, 0, 0);
part_type_size(global.pt_Effect1, 0.25, 0.25, 0, 0);
part_type_scale(global.pt_Effect1, 1, 1);
part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect1, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_Effect1, 1, 0.50, 0);
part_type_blend(global.pt_Effect1, 0);
part_type_life(global.pt_Effect1, 200,200);
part_type_speed(global.pt_Effect1, 0.50, 0.50, 0, 0);
part_type_direction(global.pt_Effect1, 90, 90, 0, 0);
part_type_gravity(global.pt_Effect1, 0, 0);

//Creating Emitters
global.pe_Effect1 = part_emitter_create(ps);

//Adjusting Emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
part_emitter_region(ps, global.pe_Effect1, xp-34, xp+34, yp-500, yp+500, ps_shape_rectangle, ps_distr_linear);
//part_emitter_stream(ps, global.pe_Effect1, global.pt_Effect1, 3);

//Destroying Emitters
//part_emitter_destroy(ps, global.pe_Effect1);
//part_system_destroy(global.pe_Effect1)



startstreaming = false;