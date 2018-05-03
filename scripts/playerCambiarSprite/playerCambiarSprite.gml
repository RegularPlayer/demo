switch(argument0)
{
	//Volteando derecha o izquierda
	case 0:
		sprite_index = korrektorRight_spr;
	break;
	case 1:
		sprite_index = korrektorLeft_spr;
	break;
	//-----
	//Moviendose derecha o izquierda
	case 2:
		sprite_index = korrektorRight_spr;
	break;
	case 3:
		sprite_index = korrektorLeft_spr;
	break;
	//-----
	//Saltar derecha o izquierda
	case 4:
		sprite_index = korrektorJumpRight_spr;
	break;
	case 5:
		sprite_index = korrektorJumpLeft_spr;
	break;
	case 6:
		sprite_index = korrektorFalling_spr;
	break;
	case 7:
		sprite_index = korrektorInfectingRight_spr
	break;
	case 8:
		sprite_index = korrektorInfectingLeft_spr
	break;
	//-----
}