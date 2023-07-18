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



ppDotsLess = "-4 required dots";
ppPickupRange = "+1 pickup range";
ppDotScore = "+10% score from dots";
pp1Up = "+1 life";