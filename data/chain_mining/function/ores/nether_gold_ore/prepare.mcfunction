function chain_mining:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] run function chain_mining:ores/nether_gold_ore/main
# 有精准采集
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:nether_gold_ore"}},limit=1,sort=nearest] run function chain_mining:ores/nether_gold_ore/main

scoreboard players reset @s chain_mining_nether_gold_ore
function chain_mining:generic/end_chain_mining
