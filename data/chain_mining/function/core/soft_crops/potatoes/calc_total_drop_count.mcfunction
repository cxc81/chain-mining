scoreboard players set total_drop_count chain_mining_variables 0
execute at @e[type=minecraft:item,predicate=chain_mining:item/potato,tag=!chain_mining_detected,limit=1,sort=nearest] \
    as @e[type=minecraft:item,predicate=chain_mining:item/potato,tag=!chain_mining_detected,distance=..1] run \
    function chain_mining:core/soft_crops/potatoes/add_drop_count
