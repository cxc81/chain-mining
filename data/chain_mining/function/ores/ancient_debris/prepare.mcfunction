function chain_mining:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:ancient_debris"}},limit=1,sort=nearest] run function chain_mining:ores/ancient_debris/main
scoreboard players reset @s chain_mining_ancient_debris
function chain_mining:generic/end_chain_mining
