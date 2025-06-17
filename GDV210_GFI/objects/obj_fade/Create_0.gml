image_xscale *= 100;
image_yscale *= 100;
depth = -10000;
fadeSpeed = .05;
waitFade = false;
image_alpha = 0;
fadingOut = true;
target_room = -1;

if (room == target_room)
{
    fadingOut = false;
    image_alpha = 1;
	waitFade = true;
    alarm[0] = 60;
}