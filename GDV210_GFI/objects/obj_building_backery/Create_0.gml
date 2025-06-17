event_inherited();

if(variable_global_exists("distort1_level"))
{
	if(global.distort1_level >= 2)
	{
		sprite_index = spr_bakery_stage_3;
	}
	else if(global.distort1_level = 1)
	{
		sprite_index = spr_bakery_stage_2;
	}
}
else if(variable_global_exists("distort5_level"))
{
	if(global.distort5_level >= 2)
	{
		sprite_index = spr_bakery_stage_3;
	}
	else if(global.distort5_level = 1)
	{
		sprite_index = spr_bakery_stage_2;
	}
}

image_index = irandom(image_number - 1);