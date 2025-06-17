event_inherited();

if(variable_global_exists("distort2_level"))
{
	if(global.distort2_level >= 2)
	{
		sprite_index = spr_bus_stop_stage_3;
	}
	else if(global.distort2_level = 1)
	{
		sprite_index = spr_bus_stop_stage_2;
	}
}
else if(variable_global_exists("distort6_level"))
{
	if(global.distort6_level >= 2)
	{
		sprite_index = spr_bus_stop_stage_3;
	}
	else if(global.distort6_level = 1)
	{
		sprite_index = spr_bus_stop_stage_2;
	}
}

image_index = irandom(image_number - 1);