keyAsimilate = keyboard_check(vk_enter);
//Direccion
playerDireccion();
//-----

//Movimiento Horizontal
playerMovimiento();
//-----

//Gravedad y Salto
playerGravedad();
playerSalto();
//-----

//Colision
playerColisionX();
playerColisionY();
//-----

//Asimilacion

if(playerInfecting == 0)
{
	if(place_meeting(x + (playerIsFacing*128),y,enemy_obj) && enemy_obj.enemyLockedOn == 1)
	{
		if(keyAsimilate)
		{
			switch(playerIsFacing)
			{
				case 1:
					playerCambiarSprite(7);
				break;
				case -1:
					playerCambiarSprite(8);
				break;
			}
		}
	}
}
//-----

//Movimiento en los ejes
x += playerXSpeed;
y += playerYSpeed;
//-----