function chain_mining:core/generic/begin_chain_mining
function chain_mining:core/soft_crops/carrots/calc_total_drop_count
execute if score total_drop_count chain_mining_variables matches 2.. at @e[predicate=chain_mining:item/carrot,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/soft_crops/carrots/main
scoreboard players reset @s chain_mining_carrots
function chain_mining:core/generic/end_chain_mining
