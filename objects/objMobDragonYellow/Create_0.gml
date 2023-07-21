event_inherited();

moveSpeed = 5;
if(pc.stage >= ww.llSpeed1){ moveSpeed ++; }
if(pc.stage >= ww.llSpeed2){ moveSpeed ++; }
moveType = "random";
stun = 120;





if(pc.stage >= ww.llSpellYellow){
	effect = imgPill;
	effCDMax = 30 * 12;
	effCD = effCDMax / 5;
}