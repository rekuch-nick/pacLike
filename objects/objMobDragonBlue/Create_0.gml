event_inherited();

moveSpeed = 4;
if(pc.stage < 12){ moveSpeed --; }
if(pc.stage > 22){ moveSpeed ++; }
moveType = "hunt";
stun = 60;

speedChangeChance = 10;
speedMin = 2;
speedMax = 7;