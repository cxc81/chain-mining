function chain_mining:core/generic/begin_chain_mining
# 无精准采集
execute if predicate chain_mining:player/mainhand/holding_axe unless score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,predicate=chain_mining:item/melon_slice,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/hard_crops/melon/main
# 有精准采集
execute if predicate chain_mining:player/mainhand/holding_axe if score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,predicate=chain_mining:item/melon,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/hard_crops/melon/main

scoreboard players reset @s chain_mining_melon
function chain_mining:core/generic/end_chain_mining
