
obj_player.pkupslidestate[0] = false
obj_player.pkupslidestate[1] = 0

obj_player.pkupfazestate[0] = false
obj_player.pkupfazestate[1] = 0

if (room_get_name(room) = "rm_lvl2_kupler" || room_get_name(room) = "rm_lvl1_kupler" )
{obj_player.slidehelp = true; obj_player.fazehelp = true;}


obj_player.player_dying = false

obj_player.gear1limitunlock = true
obj_player.gear2limitunlock = true
obj_player.gear3limitunlock = true
obj_player.goodtoswitch = true

obj_player.start_run_anim = true
obj_player.mid_jump = false
obj_player.stopjumping = true


with(obj_pkupfaze)
{
	active = false;
}


with(obj_pkupslide)
{
	active = false
}


obj_chkpt.chkpt = obj_checkppoint.bluechkptstore
obj_chkpt.chkpt_ftr = obj_checkppoint.bluechkpt_ftrstore


if (obj_player.respawnpos_xy[0] <= 0)
{
	obj_player.respawnpos_xy = level_start_pos()
}

obj_player.x = obj_player.respawnpos_xy[0]
obj_player.y = obj_player.respawnpos_xy[1]

obj_soundcontroller.deathsilence[1] = true