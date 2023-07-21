image_xscale = 4; image_yscale = 4;
ww.state = "treasure";
ww.gotChest = true;

cur = 0;
curMax = 2;

random_set_seed(ww.seed + pc.stage);


perk[0] = choosePerk();
perk[1] = choosePerk(perk[0]);
perk[2] = ww.pp1Up;

randomize();