function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:granite"}},limit=1,sort=nearest] run function chain_mining:core/stones/granite/main
scoreboard players reset @s chain_mining_granite
function chain_mining:core/generic/end_chain_mining
