//// @description creates the dialog controller if it doesnt exist already and passes variables to it (somewhat of a middle man)
//// @param dialog
//// @param dialog_line

if(!instance_exists(obj_dialogcontroller))
{
	instance_create_depth(0,0,0, obj_dialogcontroller);
	obj_dialogcontroller.dialog_lines = argument[0].dialog;
	obj_dialogcontroller.dialog_line = argument[1];
	obj_dialogcontroller.fetch = true; // if this is true get_dialog will grab the next line of dialog 
}