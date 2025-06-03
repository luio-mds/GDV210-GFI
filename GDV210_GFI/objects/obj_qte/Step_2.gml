//fail effect
if (shake) {
    var shakeX = random_range(-shakeForce, shakeForce);
    var shakeY = random_range(-shakeForce, shakeForce);

    view_xport[0] += shakeX;
	view_yport[0] += shakeY;

    shakeDur--;

    if (shakeDur <= 0) {
        shake = false; // Stop shaking
		view_xport[0] = 0;
		view_yport[0] = 0;
    }
}