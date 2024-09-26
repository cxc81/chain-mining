function mine:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand mine_variables matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:quartz"}},limit=1,sort=nearest] run function mine:ores/nether_quartz_ore/main
# 有精准采集
execute if score silk_touch_level_mainhand mine_variables matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:nether_quartz_ore"}},limit=1,sort=nearest] run function mine:ores/nether_quartz_ore/main

scoreboard players reset @s mine_nether_quartz_ore
function mine:generic/end_chain_mining
