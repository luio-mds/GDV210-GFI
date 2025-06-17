event_inherited();

if(variable_global_exists("distortion_level"))
{
	if(global.distortion_level > 2)
	{
		sprite_index = spr_bakery_stage_3;
	}
	else if(global.distortion_level > 1)
	{
		sprite_index = spr_bakery_stage_2;
	}
}

image_index = irandom(image_number - 1);