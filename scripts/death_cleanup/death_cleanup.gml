
obj_player.pkupslidestate[0] = false
obj_player.pkupslidestate[1] = 0
if (room_get_name(room) = "rm_lvl2_kupler" || room_get_name(room) = "rm_lvl1_kupler" )
{obj_player.slidehelp = true}
obj_player.x = obj_player.respawnpos_xy[0]
obj_player.y = obj_player.respawnpos_xy[1]
obj_player.player_dying = false

