event_inherited();

moveSpeed = 3;

moveType = choose("hunt", "ambush");
stun = 60;

speedChangeChance = 10;
speedMin = 2;
speedMax = 7;


limitedDots = true;
dotsLeft = clamp(pc.stage * 2, 24, 60);

diesWhenKilled = true;