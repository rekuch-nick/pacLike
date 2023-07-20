image_xscale = 4; image_yscale = 4;
ww.state = "treasure";
ww.gotChest = true;

cur = 0;
curMax = 2;

random_set_seed(ww.seed + pc.stage * 3);

perk[0] = choose(ww.ppDotsLess, ww.ppPowerEffect, ww.ppSpeedUp, ww.ppPrincessChance);
perk[1] = choose(ww.ppPickupRange, ww.ppPowerAmount, ww.ppDotScore, ww.ppPowerTime);
perk[2] = ww.pp1Up;

randomize();