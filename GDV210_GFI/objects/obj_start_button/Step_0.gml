// load game on mouse buttons
if(mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right) )
{
	//audio_play_sound(sndKick,10,false);
	room_goto(rm_main);
}
// text effect
if( textAlpha < 1 && timer == 0)
{
	textAlpha += 0.01;
}
else if(textAlpha == 1 && timer == 0)
{
	timer = 1;
}
else if(textAlpha > 0.3 && timer == 1)
{
	textAlpha -= 0.01;
}
else if(textAlpha == 0.3 && timer == 1)
{
	timer = 0;
}