right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));

move_x = right_key - left_key;
move_x = move_x * movespeed;

global.player_health = m_health;

if (global.game_paused == false)
{
	if place_meeting(x, y+2, obj_ground)
	{
		move_y = 0;
	}

	move_and_collide(move_x, move_y, obj_ground);

	if move_x != 0
	{
		image_xscale = sign(move_x);	
	}
}


// Increase health
if (keyboard_check_pressed(vk_right))
{
    m_health += 10;
}

// Decrease health
if (keyboard_check_pressed(vk_left))
{
	m_health -= 10;
}

global.player_health = m_health;