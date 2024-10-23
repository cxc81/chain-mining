function chain_mining:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. if predicate chain_mining:player/mainhand/holding_pickaxe at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:amethyst_shard"}},limit=1,sort=nearest] run function chain_mining:ores/amethyst_cluster/main
# 有精准采集
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. if predicate chain_mining:player/mainhand/holding_pickaxe at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:amethyst_cluster"}},limit=1,sort=nearest] run function chain_mining:ores/amethyst_cluster/main

scoreboard players reset @s chain_mining_amethyst_cluster
function chain_mining:generic/end_chain_mining
