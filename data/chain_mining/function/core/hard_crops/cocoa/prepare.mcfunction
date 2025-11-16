function chain_mining:core/generic/begin_chain_mining
function chain_mining:core/hard_crops/cocoa/calc_total_drop_count
# 只有挖掘成熟的可可果，并且使用斧，才能连锁
execute if score total_drop_count chain_mining_variables matches 2.. if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,predicate=chain_mining:item/cocoa_beans,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/hard_crops/cocoa/main
scoreboard players reset @s chain_mining_cocoa
function chain_mining:core/generic/end_chain_mining
