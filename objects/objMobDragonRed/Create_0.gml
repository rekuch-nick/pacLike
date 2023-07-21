event_inherited();

moveSpeed = 3;
if(pc.stage >= ww.llSpeed1){ moveSpeed ++; }
if(pc.stage >= ww.llSpeed2){ moveSpeed ++; }

moveType = "hunt";
stun = 60;

rage01 = 1;
rage02 = 1;
rage03 = 1;

if(pc.stage >= ww.llSpellRed){
	effect = imgFire;
	effCDMax = 30 * 10;
	effCD = effCDMax / 5;
}