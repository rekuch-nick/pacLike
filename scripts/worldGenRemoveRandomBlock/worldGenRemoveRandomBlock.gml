function worldGenRemoveRandomBlock(){
	var tries = 0;
	while(tries < 10000){
		tries ++;
		
		
		if(choose(true, false)){
		
			//var a = (irandom_range(0, 6) * 3) + 1;
			//var b = (irandom_range(0, 7) * 3) + 1;
			var a = choose(0,  1, 1, 2, 3, 4, 5, 5, 6) * 3 + 1;
			var b = choose(0, 1, 1, 2, 3, 4, 5, 6, 6, 7) * 3 + 1;
			
			if(bmap[a + 1, b] != noone && bmap[a + 2, b] != noone){
				
				
				
				
				if(inBounds(a + 1, b - 3) && bmap[a + 1, b - 3] == noone){
					if(irandom_range(1, 8) == 1){ continue; }
				}
				if(inBounds(a + 1, b + 3) && bmap[a + 1, b + 3] == noone){
					if(irandom_range(1, 8) == 1){ continue; }
				}
				
				bmap[a + 1, b] = noone;
				bmap[a + 2, b] = noone;
				
				return;
			}
			
			
		} else {
			
			var a = choose(0, 0, 0, 1, 1, 2, 2, 3, 4, 5, 5, 6, 6, 7, 7, 7) * 3 + 1;
			var b = choose(0, 0, 0, 1, 1, 2, 2, 3, 4, 4, 5, 5, 6, 6, 6) * 3 + 1;
			
			if(bmap[a, b + 1] != noone && bmap[a, b + 2] != noone){
				
				
				if(inBounds(a + 3, b + 1) && bmap[a + 3, b + 1] == noone){
					if(irandom_range(1, 8) == 1){ continue; }
				}
				if(inBounds(a - 3, b + 1) && bmap[a - 3, b + 1] == noone){
					if(irandom_range(1, 8) == 1){ continue; }
				}
				
				bmap[a, b + 1] = noone;
				bmap[a, b + 2] = noone;
				
				
				return;
			}
			
		}
		
		
		
	}
}