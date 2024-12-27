function chain_mining:core/generic/begin_chain_mining
# 无精准采集
execute if predicate chain_mining:player/mainhand/holding_axe unless score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:melon_slice"}},limit=1,sort=nearest] run function chain_mining:core/crops_with_hardness/melon/main
# 有精准采集
execute if predicate chain_mining:player/mainhand/holding_axe if score silk_touch_level_mainhand chain_mining_variables matches 1.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:melon"}},limit=1,sort=nearest] run function chain_mining:core/crops_with_hardness/melon/main

scoreboard players reset @s chain_mining_melon
function chain_mining:core/generic/end_chain_mining
