function worldGenBuildImageMap(){
	
	
	for(var a=0; a<24; a++){ for(var b=0; b<24; b++){
		imap[a, b] = 0;
		
		var up = !pointInBlock( (a * 32) + 16, (b * 32) + 16 - 32);
		var dn = !pointInBlock( (a * 32) + 16, (b * 32) + 16 + 32);
		var lf = !pointInBlock( (a * 32) + 16 - 32, (b * 32) + 16);
		var rt = !pointInBlock( (a * 32) + 16 + 32, (b * 32) + 16);
		
		var ul = !pointInBlock( (a * 32) + 16 - 32, (b * 32) + 16 - 32);
		var ur = !pointInBlock( (a * 32) + 16 + 32, (b * 32) + 16 - 32);
		var dl = !pointInBlock( (a * 32) + 16 - 32, (b * 32) + 16 + 32);
		var dr = !pointInBlock( (a * 32) + 16 + 32, (b * 32) + 16 + 32);
		
		var adj = 4;
		if(up){ adj --; }
		if(dn){ adj --; }
		if(lf){ adj --; }
		if(rt){ adj --; }
		//if(ul){ adj --; }
		//if(ur){ adj --; }
		//if(dl){ adj --; }
		//if(dr){ adj --; }
		
		var f = 0;
		
		if(adj == 3){
			if(up){ f = 1; }
			if(dn){ f = 3; }
			if(rt){ f = 2; }
			if(lf){ f = 4; }
		} else if(adj == 2){
			if(dn && rt){ f = 5; }
			if(up && rt){ f = 6; }
			if(dn && lf){ f = 7; }
			if(up && lf){ f = 8; }
			if(rt && lf){ f = 14; } //
			if(up && dn){ f = 13; } //
		} else if (adj == 4){
			if(ul){ f = 9; }
			if(ur){ f = 10; }
			if(dr){ f = 11; }
			if(dl){ f = 12; }
		} else if (adj == 1){
			if(rt || lf){ f = 14; }
			if(up || dn){ f = 13; }
		}
		
		
		imap[a, b] = f;
		continue;
		
		
		if(!pointInBlock( (a * 32) + 16 + 32, (b * 32) + 16) ){ imap[a, b] = 2; }
		if(!pointInBlock( (a * 32) + 16 - 32, (b * 32) + 16) ){ imap[a, b] = 4; }
		if(!pointInBlock( (a * 32) + 16, (b * 32) + 16 - 32) ){ imap[a, b] = 1; }
		if(!pointInBlock( (a * 32) + 16, (b * 32) + 16 + 32) ){ imap[a, b] = 3; }
		
		if(!pointInBlock( (a * 32) + 16 + 32, (b * 32) + 16)  && !pointInBlock( (a * 32) + 16, (b * 32) + 16 + 32) ){ imap[a, b] = 5; }
		if(!pointInBlock( (a * 32) + 16 + 32, (b * 32) + 16)  && !pointInBlock( (a * 32) + 16, (b * 32) + 16 - 32) ){ imap[a, b] = 6; }
		if(!pointInBlock( (a * 32) + 16 - 32, (b * 32) + 16)  && !pointInBlock( (a * 32) + 16, (b * 32) + 16 + 32) ){ imap[a, b] = 7; }
		if(!pointInBlock( (a * 32) + 16 - 32, (b * 32) + 16)  && !pointInBlock( (a * 32) + 16, (b * 32) + 16 - 32) ){ imap[a, b] = 8; }
			
	}}
	
	
}