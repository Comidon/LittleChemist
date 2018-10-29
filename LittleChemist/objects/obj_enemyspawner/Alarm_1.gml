if (needed_solid > gathered_solid + instance_number(obj_enemy_1))
{
    instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", obj_enemyspawn_1);
}
alarm[1] = irandom_range(200, 380);