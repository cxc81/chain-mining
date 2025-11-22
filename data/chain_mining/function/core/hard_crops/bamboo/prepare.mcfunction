function chain_mining:core/generic/begin_chain_mining
execute if predicate chain_mining:player/mainhand/holding_axe_or_sword at @e[type=minecraft:item,predicate=chain_mining:item/bamboo,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/hard_crops/bamboo/main
scoreboard players reset @s chain_mining_bamboo
function chain_mining:core/generic/end_chain_mining
