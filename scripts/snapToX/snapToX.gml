function snapToX(){
	var n = x % 32;
	
	if(n >= 16){
		while((x-16) % 32 != 0){ x --; }
	} else {
		while((x-16) % 32 != 0){ x ++; }
	}
}