function get_distance(_x1, _y1, _x2, _y2)
{
	var A = _x2 - _x1;
	var B = _y2 - _y1;
	var A2 = sqr(A);
	var B2 = sqr(B);
	var C = A2 + B2;
	C = sqrt(C);
	return C;
}