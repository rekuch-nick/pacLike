function playerInput(){
	
	xIn = 0;
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))){ xIn --; }
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){ xIn ++; }
	
	yIn = 0;
	if(keyboard_check(vk_up) || keyboard_check(ord("W"))){ yIn --; }
	if(keyboard_check(vk_down) || keyboard_check(ord("S"))){ yIn ++; }
	
	if(xIn != 0 && yIn != 0){ xIn = 0; yIn = 0; }
	
	pressingSpace = keyboard_check(vk_space);
	pressedSpace = keyboard_check_pressed(vk_space);
	
	pressingEnter = keyboard_check(vk_enter);
	pressedEnter = keyboard_check_pressed(vk_enter);
	
	pressingEsc = keyboard_check(vk_escape);
	pressedEsc = keyboard_check_pressed(vk_escape);
	
	pressedUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	pressedDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	
}