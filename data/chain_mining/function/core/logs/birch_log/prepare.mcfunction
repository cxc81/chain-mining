function chain_mining:core/generic/begin_chain_mining
execute if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:birch_log"}},limit=1,sort=nearest] run function chain_mining:core/logs/birch_log/main
scoreboard players reset @s chain_mining_birch_log
function chain_mining:core/generic/end_chain_mining
