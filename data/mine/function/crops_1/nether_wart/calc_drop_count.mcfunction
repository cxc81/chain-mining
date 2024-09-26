scoreboard players set drop_count mine_variables 0
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] \
    as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:nether_wart"}},distance=..1] run \
    function mine:crops_1/nether_wart/add_drop_count
