function inBounds(a, b, reduce){
	if(is_undefined(reduce)){ reduce = 0; }
	return a >= 0 + reduce && b >= 0 + reduce && a < 24 - reduce && b < 24 - reduce;
}