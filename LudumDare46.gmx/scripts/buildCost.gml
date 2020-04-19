var arg_unit = argument0
switch arg_unit{
    case oWall: return 1
    case oSlime: return 3
    case oGoblin: return 8
    case oWhisp: return 14
    case oEyeBat: return 28
    case oSpecter: return 42
    case oCyclops: return 72
    case oDragon: return 105
    case oLesserDemon: return 155
    case oBeholder: return 215
}
