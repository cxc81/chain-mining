scoreboard players set drop_count mine_variables 0
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] \
    as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:carrot"}},distance=..1] run \
    function mine:crops_1/carrot/add_drop_count
