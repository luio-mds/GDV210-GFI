//fail effect
if failed
{
	// Set the screen color to red
    draw_set_color(c_red);

    // Set the alpha (transparency)
    draw_set_alpha(hitAlpha); // 1 is fully opaque

    // Draw a rectangle that covers the entire screen
    draw_rectangle(0, 0, 800, 580, false);

	hitAlpha -= 0.2;
	
	if hitAlpha <= 0
	{
	    // Reset the color and alpha for other elements
	    draw_set_color(c_black);
	    draw_set_alpha(1);
		failed = false;
		hitAlpha = 1;
	}
}