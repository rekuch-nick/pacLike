image_xscale = 4; image_yscale = 4;
xSpot = floor(x / 32); ySpot = floor(y / 32);
xHome = xSpot; yHome = ySpot;
xLast = xSpot; yLast = ySpot;
dir = 0;
moveSpeed = 3;
moveType = "hunt";

stun = 60;

rage01 = 0;
rage02 = 0;
rage03 = 0;

isEnemy = true;
isTreasure = false;

hurtTime = 0;

speedChangeChance = 0;
speedMax = 7;
speedMin = 2;

effCDMax = 30 * 10;
effCD = effCDMax / 5;
effect = noone;

ignoreBlackBlocks = false;
showMimic = false;
showMimicRange = 6;
diesWhenKilled = false;

limitedDots = false;
dotsLeft = 30;