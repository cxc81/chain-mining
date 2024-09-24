function mine:generic/begin_chain_mining

scoreboard players set drop_count mine 0
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}}] run function mine:crops_2/cocoa/drop_count

# 只有挖掘成熟的可可果，并且使用斧，才能连锁
execute if score drop_count mine matches 2.. if predicate mine:mainhand/holding_axe at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function mine:crops_2/cocoa/main
scoreboard players reset @s mine_cocoa
function mine:generic/end_chain_mining