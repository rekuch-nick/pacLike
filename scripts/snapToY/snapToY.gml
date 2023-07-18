function snapToY(){
	var n = y % 32;
	
	if(n >= 16){
		while((y-16) % 32 != 0){ y --; }
	} else {
		while((y-16) % 32 != 0){ y ++; }
	}
}