function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,predicate=chain_mining:item/beetroot,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/soft_crops/beetroots/main
scoreboard players reset @s chain_mining_beetroots
function chain_mining:core/generic/end_chain_mining
