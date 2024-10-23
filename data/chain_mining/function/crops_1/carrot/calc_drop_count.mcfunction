scoreboard players set drop_count chain_mining_variables 0
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] \
    as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:carrot"}},distance=..1] run \
    function chain_mining:crops_1/carrot/add_drop_count
