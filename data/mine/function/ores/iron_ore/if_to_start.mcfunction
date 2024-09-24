function mine:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand mine matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:raw_iron"}},limit=1,sort=nearest] run function mine:ores/iron_ore/main
# 有精准采集(浅层)
execute if score silk_touch_level_mainhand mine matches 1.. if score @s mine_iron_ore matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:iron_ore"}},limit=1,sort=nearest] run function mine:ores/iron_ore/main
# 有精准采集(深层)
execute if score silk_touch_level_mainhand mine matches 1.. if score @s mine_deepslate_iron_ore matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:deepslate_iron_ore"}},limit=1,sort=nearest] run function mine:ores/iron_ore/main

scoreboard players reset @s mine_iron_ore
scoreboard players reset @s mine_deepslate_iron_ore
function mine:generic/end_chain_mining
