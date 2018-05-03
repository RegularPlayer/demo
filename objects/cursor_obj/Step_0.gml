key_select = keyboard_check_pressed(vk_numpad0);

switch(Menu)
{
	case 1:
		key_up = keyboard_check_pressed(vk_up);
		key_down = keyboard_check_pressed(vk_down);
		
		if(key_up && Opcion > 0)
		{
			Opcion--;
			y += -90;
		}
		
		if(key_down && Opcion < 2)
		{
			Opcion++;
			y += 90;
		}
		
		if(key_select)
		{
			switch(Opcion)
			{
				case 0:
					room_goto_next();
				break;
				case 1:
					
				break;
				case 2:
					game_end();
				break;
			}
		}
	break;
	case 2:
		key_left = keyboard_check_pressed(vk_left);
		key_right = keyboard_check_pressed(vk_right);
		
		if(key_left && Opcion > 0)
		{
			Opcion--;
			x += -400;
		}
		
		if(key_right && Opcion < 1)
		{
			Opcion++;
			x += 400;
		}
		
		if(key_select)
		{
			switch(Opcion)
			{
				case 0:
					room_goto(2);
				break;
				case 1:
					room_goto(1);
				break;
			}
		}
	break;
}