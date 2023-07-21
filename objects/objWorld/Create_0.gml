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
pp1Up = "+1 Life";
ppPowerAmount = "More Power Pellets";
ppPowerTime = "Power Pellets Last Longer";
ppPowerEffect = "Longer Enemy Ghost-time";
ppSpeedUp = "Move a little faster";
ppPrincessChance = "Princess More Frequent";
ppMimicReduction = "Fewer Mimics Appear";
ppExtraWarps = "Edge Doors Close Later";
ppLifeGain = "Chests Give More Lives";
ppRestTimer = "See Rest Timer";
ppPicks = "+1 Dig per Stage";

llSpellRed = 30;
llSpellBlue = 20;
llSpellGreen = 15;
llSpellYellow = 25;

llSpeed1 = 11;
llSpeed2 = 22;
llDotWander = 17;

llYellowAppears = 3;
llBlueAppears = 6;

llMimic1 = 6;
llMimic2 = 12;
llMimic3 = 18;
llMimic4 = 27;

llNegPill1 = 7;
llNegPill2 = 14;
llNegPill3 = 21;
llNegPill4 = 28;





///
llTrapTime = 18;

helpIcon = imgBlank;
helpText = "";

