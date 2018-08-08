/// @description trigger level switcher
// You can write your code in this editor
endoflevel = false;
obj_levelswitcher.goto[0] = true;
obj_levelswitcher.goto[1] = 0;

with(obj_endparticles)
{
	part_emitter_destroy(ps, global.pe_Effect1);
	part_system_destroy(global.pe_Effect1);
}