event_inherited();

if(variable_global_exists("distort3_level"))
{
	if(global.distort3_level >= 2)
	{
		sprite_index = spr_cafe_stage_3;
	}
	else if(global.distort3_level = 1)
	{
		sprite_index = spr_cafe_stage_2;
	}
}
else if(variable_global_exists("distort7_level"))
{
	if(global.distort7_level >= 2)
	{
		sprite_index = spr_cafe_stage_3;
	}
	else if(global.distort7_level = 1)
	{
		sprite_index = spr_cafe_stage_2;
	}
}

image_index = irandom(image_number - 1);