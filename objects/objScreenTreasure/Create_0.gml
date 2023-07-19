image_xscale = 4; image_yscale = 4;
ww.state = "treasure";
ww.gotChest = true;

cur = 0;
curMax = 3;

random_set_seed(ww.seed + pc.stage * 3);

perk[0] = choose(ww.ppDotsLess, ww.ppPowerEffect, ww.ppSpeedUp);
perk[1] = choose(ww.ppPickupRange, ww.ppPowerAmount);
perk[2] = choose(ww.ppDotScore, ww.ppPowerTime);
perk[3] = ww.pp1Up;

randomize();