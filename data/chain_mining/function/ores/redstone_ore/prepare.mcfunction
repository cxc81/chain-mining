function chain_mining:generic/begin_chain_mining

# 无精准采集
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:redstone"}},limit=1,sort=nearest] run function chain_mining:ores/redstone_ore/main
# 有精准采集(浅层)
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. if score @s chain_mining_redstone_ore matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:redstone_ore"}},limit=1,sort=nearest] run function chain_mining:ores/redstone_ore/main
# 有精准采集(深层)
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. if score @s chain_mining_deepslate_redstone_ore matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:deepslate_redstone_ore"}},limit=1,sort=nearest] run function chain_mining:ores/redstone_ore/main

scoreboard players reset @s chain_mining_redstone_ore
scoreboard players reset @s chain_mining_deepslate_redstone_ore
function chain_mining:generic/end_chain_mining
