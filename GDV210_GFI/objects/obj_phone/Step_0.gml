//phone start animation
if phoneON == true
{
	if (y > 100)
	{
	    y = y - 50;
	}
	else if y < 100
	{
		y = 100;
	}
}
else
{
	if (y < 600)
	{
	    y = y + 50;
	}
	else if y >= 600
	{
		instance_destroy(self);
	}
}