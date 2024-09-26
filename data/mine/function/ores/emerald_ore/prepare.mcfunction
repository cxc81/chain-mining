function mine:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand mine_variables matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:emerald"}},limit=1,sort=nearest] run function mine:ores/emerald_ore/main
# 有精准采集(浅层)
execute if score silk_touch_level_mainhand mine_variables matches 1.. if score @s mine_emerald_ore matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:emerald_ore"}},limit=1,sort=nearest] run function mine:ores/emerald_ore/main
# 有精准采集(深层)
execute if score silk_touch_level_mainhand mine_variables matches 1.. if score @s mine_deepslate_emerald_ore matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:deepslate_emerald_ore"}},limit=1,sort=nearest] run function mine:ores/emerald_ore/main

scoreboard players reset @s mine_emerald_ore
scoreboard players reset @s mine_deepslate_emerald_ore
function mine:generic/end_chain_mining
