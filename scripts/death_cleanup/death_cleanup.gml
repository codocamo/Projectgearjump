
obj_player.pkupslidestate[0] = false
obj_player.pkupslidestate[1] = 0

obj_player.pkupfazestate[0] = false
obj_player.pkupfazestate[1] = 0

if (room_get_name(room) = "rm_lvl2_kupler" || room_get_name(room) = "rm_lvl1_kupler" )
{obj_player.slidehelp = true; obj_player.fazehelp = true;}


if (obj_player.respawnpos_xy[0] <= 0)
{
	obj_player.respawnpos_xy = level_start_pos()
}

obj_player.x = obj_player.respawnpos_xy[0]
obj_player.y = obj_player.respawnpos_xy[1]

obj_player.player_dying = false

obj_player.gear1limitunlock = true
obj_player.gear2limitunlock = true
obj_player.gear3limitunlock = true

obj_player.start_run_anim = true


with(obj_pkupfaze)
{
	active = false;
}


with(obj_pkupslide)
{
	active = false
}
