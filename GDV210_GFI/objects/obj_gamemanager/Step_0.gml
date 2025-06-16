//create music controller on room change
if(!instance_exists(obj_music_controller))
{
	instance_create_depth(0, 0, 0, obj_music_controller);
}