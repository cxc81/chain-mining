function chain_mining:core/generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:quartz"}},limit=1,sort=nearest] run function chain_mining:core/ores/nether_quartz_ore/main
# 有精准采集
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:nether_quartz_ore"}},limit=1,sort=nearest] run function chain_mining:core/ores/nether_quartz_ore/main

scoreboard players reset @s chain_mining_nether_quartz_ore
function chain_mining:core/generic/end_chain_mining
