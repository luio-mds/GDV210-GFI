event_inherited();

if(variable_global_exists("distort4_level"))
{
	if(global.distort4_level >= 2)
	{
		sprite_index = spr_newsstand_stage_3;
	}
	else if(global.distort4_level = 1)
	{
		sprite_index = spr_newsstand_stage_2;
	}
}
else if(variable_global_exists("distort1_level"))
{
	if(global.distort8_level >= 2)
	{
		sprite_index = spr_newsstand_stage_3;
	}
	else if(global.distort8_level = 1)
	{
		sprite_index = spr_newsstand_stage_2;
	}
}

image_index = irandom(image_number - 1);