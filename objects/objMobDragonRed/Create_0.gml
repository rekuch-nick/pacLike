event_inherited();

moveSpeed = 4;
if(pc.stage < 5){ moveSpeed --; }
moveType = "hunt";
stun = 60;

rage01 = 1;
rage02 = 1;
rage03 = 1;

if(pc.stage > 26){
	effect = imgFire;
	effCDMax = 30 * 10;
	effCD = effCDMax / 5;
}