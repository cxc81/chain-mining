function mine:generic/begin_chain_mining
# 无精准采集
execute unless score silk_touch_level_mainhand mine_variables matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=1,sort=nearest] run function mine:glowstone/main
# 有精准采集
execute if score silk_touch_level_mainhand mine_variables matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:glowstone"}},limit=1,sort=nearest] run function mine:glowstone/main

scoreboard players reset @s mine_glowstone
function mine:generic/end_chain_mining
