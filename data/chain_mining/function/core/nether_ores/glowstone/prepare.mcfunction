function chain_mining:core/generic/begin_chain_mining
# 无精准采集
execute unless score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=1,sort=nearest] run function chain_mining:core/nether_ores/glowstone/main
# 有精准采集
execute if score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:glowstone"}},limit=1,sort=nearest] run function chain_mining:core/nether_ores/glowstone/main

scoreboard players reset @s chain_mining_glowstone
function chain_mining:core/generic/end_chain_mining
