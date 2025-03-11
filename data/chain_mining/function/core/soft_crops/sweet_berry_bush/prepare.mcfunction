function chain_mining:core/generic/begin_chain_mining
execute at @e[predicate=chain_mining:item/sweet_berries,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/soft_crops/sweet_berry_bush/main
scoreboard players reset @s chain_mining_sweet_berry_bush
function chain_mining:core/generic/end_chain_mining
