function chain_mining:core/generic/begin_chain_mining
execute if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,predicate=chain_mining:item/pumpkin,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/hard_crops/pumpkin/main
scoreboard players reset @s chain_mining_pumpkin
function chain_mining:core/generic/end_chain_mining
