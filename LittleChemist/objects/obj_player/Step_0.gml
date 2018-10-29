if (stuned)
{
	if (justStuned)
	{
		instance_create_layer(x, y, "BulletsLayer", obj_stun);
		justStuned = false;
	}
	
	stunCoolddown = stunCoolddown - 1;
	
	if (stunCoolddown < 1)
	{
		justStuned = true;
		stuned = false;
		stunCoolddown = 100;
	}
}

else
{
    // Move
    if (keyboard_check(vk_right)) {x = x + 4; image_xscale = -1;}
    if (keyboard_check(vk_left)) {x = x - 4; image_xscale = 1;}
    if (keyboard_check(vk_up)) y = y - 4;
    if (keyboard_check(vk_down)) y = y + 4;
    
    // Aim
    // image_angle = point_direction(x, y, mouse_x, mouse_y);
    
    // Shoot
    if (mouse_check_button(mb_left)) && (cooldown < 1)
    {
    	if (bullettype == 0) instance_create_layer(x, y, "BulletsLayer", obj_bullet_0);
    	else if (bullettype == 1) instance_create_layer(x, y, "BulletsLayer", obj_bullet_1);
    	else if (bullettype == 2) instance_create_layer(x, y, "BulletsLayer", obj_bullet_2);
    	else instance_create_layer(x, y, "BulletsLayer", obj_bullet_3);
    	cooldown = 10;
    }
    
    cooldown = cooldown - 1;
    
    // Switch Bullet Type
    if (mouse_check_button_pressed(mb_right)) bullettype = (bullettype + 1) % 4;
}
