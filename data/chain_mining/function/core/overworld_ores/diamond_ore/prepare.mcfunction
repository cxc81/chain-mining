function chain_mining:core/generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:diamond"}},limit=1,sort=nearest] run function chain_mining:core/overworld_ores/diamond_ore/main
# 有精准采集(浅层)
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. if score @s chain_mining_diamond_ore matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:diamond_ore"}},limit=1,sort=nearest] run function chain_mining:core/overworld_ores/diamond_ore/main
# 有精准采集(深层)
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. if score @s chain_mining_deepslate_diamond_ore matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:deepslate_diamond_ore"}},limit=1,sort=nearest] run function chain_mining:core/overworld_ores/diamond_ore/main

scoreboard players reset @s chain_mining_diamond_ore
scoreboard players reset @s chain_mining_deepslate_diamond_ore
function chain_mining:core/generic/end_chain_mining
