scoreboard players set total_drop_count chain_mining_variables 0
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] \
    as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:potato"}},distance=..1] run \
    function chain_mining:core/soft_crops/potatoes/add_drop_count
