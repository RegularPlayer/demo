keyLeft = -keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check(vk_space);
playerDirection = keyLeft + keyRight;

if(playerDirection != 0)
{
	playerIsFacing = playerDirection;
}

switch(playerIsFacing)
{
	case 1:
		playerCambiarSprite(0);
	break;
	case -1:
		playerCambiarSprite(1);
	break;
}