scoreboard players set drop_count mine_variables 0
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] \
    as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},distance=..1] run \
    function mine:crops_2/cocoa/add_drop_count
