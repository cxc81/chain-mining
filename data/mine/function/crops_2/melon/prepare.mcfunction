function mine:generic/begin_chain_mining
# 无精准采集
execute if predicate mine:player/mainhand/holding_axe unless score silk_touch_level_mainhand mine_variables matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:melon_slice"}},limit=1,sort=nearest] run function mine:crops_2/melon/main
# 有精准采集
execute if predicate mine:player/mainhand/holding_axe if score silk_touch_level_mainhand mine_variables matches 1.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:melon"}},limit=1,sort=nearest] run function mine:crops_2/melon/main

scoreboard players reset @s mine_melon
function mine:generic/end_chain_mining
