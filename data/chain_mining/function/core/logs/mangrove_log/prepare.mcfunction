function chain_mining:core/generic/begin_chain_mining
# 根据玩家的chain_mining_mangrove和chain_mining_mangrove_roots，判断玩家挖的是红树原木还是红树根
# 并判断玩家主手是否持斧，然后调用相应的主函数进行连锁挖掘
execute if score @s chain_mining_mangrove_log matches 1.. if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:mangrove_log"}},limit=1,sort=nearest] run function chain_mining:core/logs/mangrove_log/main
execute unless score @s chain_mining_mangrove_log matches 1.. if score @s chain_mining_mangrove_roots matches 1.. if predicate chain_mining:player/mainhand/holding_axe at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:mangrove_roots"}},limit=1,sort=nearest] run function chain_mining:core/logs/mangrove_log/main_roots

scoreboard players reset @s chain_mining_mangrove_log
scoreboard players reset @s chain_mining_mangrove_roots
function chain_mining:core/generic/end_chain_mining
