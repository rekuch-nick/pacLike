event_inherited();

moveSpeed = 3;
if(pc.stage >= ww.llSpeed1){ moveSpeed ++; }
if(pc.stage >= ww.llSpeed2){ moveSpeed ++; }
moveType = "ambush";
//moveType = "ambush2";
stun = 90;


if(pc.stage >= ww.llSpellGreen){
	effect = imgWeb;
	effCDMax = 30 * 10;
	effCD = effCDMax / 5;
}