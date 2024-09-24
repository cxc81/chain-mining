function mine:generic/begin_chain_mining
# 根据玩家的mine_mangrove和mine_mangrove_roots，判断玩家挖的是红树原木还是红树根
# 并为出现的掉落物添加标签
execute if score @s mine_mangrove matches 1.. run tag @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:mangrove_log"}},limit=1,sort=nearest] add mine_mangrove_drop
execute if score @s mine_mangrove_roots matches 1.. run tag @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:mangrove_roots"}},limit=1,sort=nearest] add mine_mangrove_drop
# 只选1个掉落物
tag @e[type=minecraft:item,tag=!mine_detected,tag=mine_mangrove_drop,limit=1,sort=nearest] add mine_mangrove_selected

execute if predicate mine:mainhand/holding_axe at @e[type=minecraft:item,tag=!mine_detected,tag=mine_mangrove_selected,limit=1,sort=nearest] run function mine:logs/mangrove_log/main

scoreboard players reset @s mine_mangrove_log
scoreboard players reset @s mine_mangrove_roots
function mine:generic/end_chain_mining
