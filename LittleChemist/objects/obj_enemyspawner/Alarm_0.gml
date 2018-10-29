if (needed_liquid > gathered_liquid + instance_number(obj_enemy_0))
{
    instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), "Instances", obj_enemyspawn_0);
}
alarm[0] = irandom_range(200, 380);