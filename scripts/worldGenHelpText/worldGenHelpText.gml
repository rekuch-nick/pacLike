function worldGenHelpText(){
	
	
	helpIcon = imgBlank;
	helpText = "";
	
	if(pc.stage == 1){
		helpIcon = imgPlayer;
		helpText = "Move with arrows or WASD, pause with Esc";
	}
	
	if(pc.stage == 2){
		helpIcon = imgPill;
		helpText = "10 points each";
	}
	
	if(pc.stage == 3){
		helpIcon = imgPowerPill;
		helpText = "Become immune for a short time";
	}
	
	if(pc.stage == 4){
		helpIcon = imgDragonWhite;
		helpText = "Every so often, Dragons will 'Rest' by moving towards their starting corners.";
	}
	
	if(pc.stage == 5){
		//helpIcon = imgDragonGreen;
		//helpText = "Tries to setup ambushes.";
	}
	
	if(pc.stage == 6){
		//helpIcon = imgDragonOrange;
		//helpText = "Faster than average, but dosen't normally chase.";
	}
	
	if(pc.stage == 7){
		helpIcon = imgPillNeg;
		helpText = "Don't eat! Removes all Power Pellets from the level and ends immune time.";
	}
	
	
	
	if(pc.stage == llSpellGreen){
		helpIcon = imgWeb;
		helpText = "Adult Green Dragons leave webs that cut your speed in half. Power pellets let you ignore it.";
	}
	
	if(pc.stage == llSpellRed){
		helpIcon = imgFire;
		helpText = "Adult Red Dragons spew deadly flames. Stay back!";
	}
	
	if(pc.stage == llSpellYellow){
		helpIcon = imgPillSpawn;
		helpText = "Adult Gold Dragons create additional pellets. They aren't worth any points.";
	}
	
	if(pc.stage == llSpellBlue){
		helpIcon = imgDragonBlue;
		helpText = "Adult Blue Dragons spawn clones. They'll disappear after you eat some pellets.";
	}
}


/*
llSpellRed = 30; llSpellBlue = 20; llSpellGreen = 15; llSpellYellow = 25;

llSpeed1 = 11;
llSpeed2 = 22;
llDotWander = 17;

llYellowAppears = 3;
llBlueAppears = 6;

llMimic1 = 6; llMimic2 = 12; llMimic3 = 18; llMimic4 = 27;

llNegPill1 = 7; llNegPill2 = 14; llNegPill3 = 21; llNegPill4 = 28;

/*