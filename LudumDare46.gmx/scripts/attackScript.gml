var arg_dir = argument0;
if attack != noone{//you need to have an attack object set
    combatTimer = 0
    atkCoolDown = 30
    alarm[0] = 5
    
    //make it look like the unit is attacking by moving forward
    ax = dcos(arg_dir) * 5
    ay = dsin(arg_dir) * 5
    var inst;
    if atkType = 2{
        var nearest = instance_nearest(x,y,oPlayer)
        inst = instance_create(nearest.x,nearest.y,attack);
    }
    else
        inst = instance_create(x,y,attack);
    inst.direction = arg_dir
    inst.image_angle = arg_dir
    inst.attack = ceil(pow/5) + bonusDamage
    inst.team = team
    inst.source = id
    if atkType = 1
        inst.speed = 2
}
