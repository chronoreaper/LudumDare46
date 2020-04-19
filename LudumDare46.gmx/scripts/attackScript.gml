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
    else if atkType = 3{
        var nearest = instance_nearest(x,y,oEnemy)
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
    //play sound effect when attacking
    switch attack{
        case oSlash: audio_play_sound(sShootFire,50,false); break;
        case oPunch: audio_play_sound(sShootFire,50,false); break;
        case oWillOWisp: audio_play_sound(sShootEnergy,50,false); break;
        case oStab: audio_play_sound(sSlash,50,false); break;
        case oArrow: audio_play_sound(sShoot2,50,false); break;
        case oLight: audio_play_sound(sShoot2,50,false); break;
        case oExplosion: audio_play_sound(sExplosion,50,false); break;
        case oWideSlash: audio_play_sound(sSlash,50,false); break;
        case oSmash: audio_play_sound(sSmash,50,false); break;
        case oBreath: audio_play_sound(sSlash,50,false); break;
        case oFire: audio_play_sound(sShootEnergy,50,false); break;
        case oFire2: audio_play_sound(sShootEnergy,50,false); break;
        case oThunder: audio_play_sound(sThunder,50,false);
            inst.image_angle = 0
            break;
    }
}
