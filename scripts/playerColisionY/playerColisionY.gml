if(place_meeting(x,(y + playerYSpeed),floor_obj))
{
	while(!place_meeting(x,(y + sign(playerYSpeed)),floor_obj))
	{
		y += sign(playerYSpeed);	
	}
	
	playerYSpeed = 0;	
	playerJumpTime = 3;
}