function fmapsRebuild(){
	
	newArr = [];
	index = 0;
	
	for(var i=0; i<array_length(ww.fmaps); i++){
		if(ww.fmaps[i].cd > 0){
			newArr[index] = ww.fmaps[i];
			index ++;
		}
	}
	
	ww.fmaps = [];
	for(var i=0; i<array_length(ww.newArr); i++){
		ww.fmaps[i] = newArr[i];
	}
}