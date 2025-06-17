if (fadingOut)
{
    image_alpha += fadeSpeed;

    if (image_alpha >= 1)
    {
        room_goto(target_room);
		fadingOut = false;
        image_alpha = 1;
    }
}
else if (!waitFade)
{
    image_alpha -= fadeSpeed;
    if (image_alpha <= 0)
    {
        instance_destroy();
    }
}