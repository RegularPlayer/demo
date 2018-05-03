if(keyJump && playerJumpTime>0)
{
	playerYSpeed = -playerJumpSpeed;
	playerJumpTime--;
}

if(!place_meeting(x,y+1,floor_obj))
{
	switch(playerIsFacing)	
	{
		case 1:
			playerCambiarSprite(4);
		break;
		case -1:
			playerCambiarSprite(5);
		break;
	}
	
	if(playerYSpeed > 0)
	{
		playerCambiarSprite(6);	
	}
	
	if(place_meeting(x,y+64,floor_obj))
	{
		switch(playerIsFacing)	
		{
			case 1:
				playerCambiarSprite(0);
			break;
			case -1:
				playerCambiarSprite(1);
			break;
		}
	}
}