function chain_mining:generic/begin_chain_mining
# 根据玩家的chain_mining_mangrove和chain_mining_mangrove_roots，判断玩家挖的是红树原木还是红树根
# 并为出现的掉落物添加标签
execute if score @s chain_mining_mangrove_log matches 1.. run tag @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:mangrove_log"}},limit=1,sort=nearest] add chain_mining_mangrove_drop
execute if score @s chain_mining_mangrove_roots matches 1.. run tag @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:mangrove_roots"}},limit=1,sort=nearest] add chain_mining_mangrove_drop
# 只选1个掉落物
tag @e[type=minecraft:item,tag=!chain_mining_detected,tag=chain_mining_mangrove_drop,limit=1,sort=nearest] add chain_mining_mangrove_selected

execute if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!chain_mining_detected,tag=chain_mining_mangrove_selected,limit=1,sort=nearest] run function chain_mining:logs/mangrove_log/main

scoreboard players reset @s chain_mining_mangrove_log
scoreboard players reset @s chain_mining_mangrove_roots
function chain_mining:generic/end_chain_mining
