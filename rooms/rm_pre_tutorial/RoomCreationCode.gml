global.branch = 1

//show_message(room_get_name(room) + "_branch_" + string(global.branch))

instance_create_depth(0, 0, 0, obj_levelswitcher);

dialog_adder(room_get_name(room) + "_branch_" + string(global.branch));
start_dialog(0)