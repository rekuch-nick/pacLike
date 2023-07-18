room_speed = 30;
roomWidth = room_height;
seed = 1;

state = "title";

instance_create_depth(0, 0, -1000, objScreenTitle);

pAlpha = 1;
pAlphaDir = -1;

scatterTime = 0;
scatterCD = 30 * 10;
scatterCDMax = 30 * 10;