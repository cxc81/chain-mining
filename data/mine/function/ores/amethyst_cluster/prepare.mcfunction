function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:amethyst_shard"}},limit=1,sort=nearest] run function mine:ores/amethyst_cluster/main
scoreboard players reset @s mine_amethyst_cluster
function mine:generic/end_chain_mining
