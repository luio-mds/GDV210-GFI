if (active)
{
    with (obj_qte)
    {
        start_qte(global.player_health);
		//create phone screen
		instance_create_depth(0, 0, -100, obj_phone);
    }
    active = false;
}