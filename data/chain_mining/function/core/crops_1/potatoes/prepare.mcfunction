function chain_mining:core/generic/begin_chain_mining
function chain_mining:core/crops_1/potatoes/calc_total_drop_count
execute if score total_drop_count chain_mining_variables matches 2.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] run function chain_mining:core/crops_1/potatoes/main
scoreboard players reset @s chain_mining_potatoes
function chain_mining:core/generic/end_chain_mining
