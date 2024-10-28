function chain_mining:core/generic/begin_chain_mining
execute if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:dark_oak_log"}},limit=1,sort=nearest] run function chain_mining:core/logs/dark_oak_log/main
scoreboard players reset @s chain_mining_dark_oak_log
function chain_mining:core/generic/end_chain_mining
