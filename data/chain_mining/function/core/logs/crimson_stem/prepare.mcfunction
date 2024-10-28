function chain_mining:core/generic/begin_chain_mining
execute if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:crimson_stem"}},limit=1,sort=nearest] run function chain_mining:core/logs/crimson_stem/main
scoreboard players reset @s chain_mining_crimson_stem
function chain_mining:core/generic/end_chain_mining
