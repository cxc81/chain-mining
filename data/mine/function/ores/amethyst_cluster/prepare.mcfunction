function mine:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand mine_variables matches 1.. if predicate mine:player/mainhand/holding_pickaxe at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:amethyst_shard"}},limit=1,sort=nearest] run function mine:ores/amethyst_cluster/main
# 有精准采集
execute if score silk_touch_level_mainhand mine_variables matches 1.. if predicate mine:player/mainhand/holding_pickaxe at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:amethyst_cluster"}},limit=1,sort=nearest] run function mine:ores/amethyst_cluster/main

scoreboard players reset @s mine_amethyst_cluster
function mine:generic/end_chain_mining
