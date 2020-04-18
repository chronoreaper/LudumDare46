var arg_unit = argument0
var pos = ds_list_size(toBuildList)
ds_list_add(toBuildList,arg_unit)
var inst = instance_create(30 * (pos - 1),room_height-30,oUnitSelection);
inst.unit = arg_unit
inst.selection = pos
