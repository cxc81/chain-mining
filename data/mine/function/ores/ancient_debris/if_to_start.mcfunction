function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:ancient_debris"}},limit=1,sort=nearest] run function mine:ores/ancient_debris/main
scoreboard players reset @s mine_ancient_debris
function mine:generic/end_chain_mining
