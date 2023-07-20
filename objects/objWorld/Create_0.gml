room_speed = 30;
roomWidth = room_height;
seed = 1;
draw_set_font(fntPlain);

state = "title";

instance_create_depth(0, 0, -1000, objScreenTitle);

pAlpha = 1;
pAlphaDir = -1;

scatterTime = 0;
scatterTimeMax = 30 * 4;
scatterCD = 30 * 10; 
scatterCDMax = 30 * 10;



ppDotsLess = "-4 Required Pellets";
ppPickupRange = "+1 Pickup Range";
ppDotScore = "+10% Score from Pellets";
pp1Up = "+1 life";
ppPowerAmount = "More Power Pellets";
ppPowerTime = "Power Pellets Last Longer";
ppPowerEffect = "Longer Enemy Ghost-time";
ppSpeedUp = "Move a little faster";
ppPrincessChance = "Princess More Frequent";