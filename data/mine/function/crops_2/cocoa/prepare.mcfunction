function mine:generic/begin_chain_mining
function mine:crops_2/cocoa/calc_drop_count
# 只有挖掘成熟的可可果，并且使用斧，才能连锁
execute if score drop_count mine_variables matches 2.. if predicate mine:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function mine:crops_2/cocoa/main
scoreboard players reset @s mine_cocoa
function mine:generic/end_chain_mining
