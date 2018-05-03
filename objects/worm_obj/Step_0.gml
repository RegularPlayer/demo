/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();

if(enemyYSpeed < 60)
{
	enemyYSpeed += enemyGravity;
}

if(place_meeting(x+sign(enemySpeed),y,floor_obj))
{
	enemySpeed = -enemySpeed;
}

if(place_meeting(x,(y + enemyYSpeed),floor_obj))
{
	while(!place_meeting(x,(y + sign(enemyYSpeed)),floor_obj))
	{
		y += sign(enemyYSpeed);	
	}
	
	enemyYSpeed = 0;
}

if(player_obj.playerInfecting == 0)
{
	x += enemySpeed;
	y += enemyYSpeed;
}


if(place_meeting(x + -(player_obj.playerIsFacing * 128),y,player_obj))
{
	if(!instance_exists(lockOn_obj))
	{
		instance_create_depth(x,y,depth,lockOn_obj);
	}
	lockOn_obj.x = x+32;
	lockOn_obj.y = y+32;
	enemyLockedOn = 1;
}
else
{
	if(instance_exists(lockOn_obj))
	{
		instance_destroy(lockOn_obj);
	}	
}

if(place_meeting(x,y,player_obj) && enemyLockedOn == 1)
{	
	player_obj.playerJumpSpeed = 0;
	player_obj.playerMoveSpeed = 3;
	player_obj.playerInfecting = 1;
	player_obj.visible = false;
	x = player_obj.x;
	y = player_obj.y;
	sprite_index = korrektorWorm_spr;
	enemyHealth--;
}
