event_inherited();

moveSpeed = 4;
if(pc.stage < 6){ moveSpeed --; }
if(pc.stage > 22){ moveSpeed ++; }
moveType = "ambush";
//moveType = "ambush2";
stun = 90;


if(pc.stage > 15){
	effect = imgWeb;
	effCDMax = 30 * 10;
	effCD = effCDMax / 5;
}