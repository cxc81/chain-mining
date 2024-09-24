function mine:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand mine matches 1.. at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] run function mine:ores/nether_gold_ore/main
# 有精准采集
execute if score silk_touch_level_mainhand mine matches 1.. at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:nether_gold_ore"}},limit=1,sort=nearest] run function mine:ores/nether_gold_ore/main

scoreboard players reset @s mine_nether_gold_ore
function mine:generic/end_chain_mining