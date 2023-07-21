event_inherited();

moveSpeed = 3;
if(pc.stage >= ww.llSpeed1){ moveSpeed ++; }
if(pc.stage >= ww.llSpeed2){ moveSpeed ++; }
moveType = "hunt";
stun = 60;

speedChangeChance = 10;
speedMin = moveSpeed - 2;
speedMax = moveSpeed + 3;


if(pc.stage >= ww.llSpellBlue){
	effect = imgDragonBlue;
	effCDMax = 30 * 10;
	effCD = effCDMax / 5;
}