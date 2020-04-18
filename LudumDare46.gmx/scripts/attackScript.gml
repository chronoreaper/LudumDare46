var arg_dir = argument0;
if attack != noone{//you need to have an attack object set
    combatTimer = 0
    atkCoolDown = 30
    alarm[0] = 5
    
    //make it look like the unit is attacking by moving forward
    ax = dcos(arg_dir) * 5
    ay = dsin(arg_dir) * 5
    
    var inst = instance_create(x,y,attack);
    inst.direction = arg_dir
    inst.image_angle = arg_dir
    inst.attack = ceil(pow/10)
    inst.team = team
}
