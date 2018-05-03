if(place_meeting((x + playerXSpeed),y,floor_obj))
{
	while(!place_meeting((x + sign(playerXSpeed)),y,floor_obj))
	{
		x += sign(playerXSpeed);	
	}
	
	playerXSpeed = 0;
}
