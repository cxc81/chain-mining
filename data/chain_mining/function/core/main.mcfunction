# 若玩家对应的设置开启，则检测对应类别的方块是否被挖掘
execute if score @s chain_mining_setting_overworld_ores matches 1 run function chain_mining:core/overworld_ores/dispatch
execute if score @s chain_mining_setting_nether_ores matches 1 run function chain_mining:core/nether_ores/dispatch
execute if score @s chain_mining_setting_logs matches 1 run function chain_mining:core/logs/dispatch
execute if score @s chain_mining_setting_rocks matches 1 run function chain_mining:core/rocks/dispatch
execute if score @s chain_mining_setting_soft_crops matches 1 run function chain_mining:core/soft_crops/dispatch
execute if score @s chain_mining_setting_hard_crops matches 1 run function chain_mining:core/hard_crops/dispatch
# 雕刻与采摘是由进度触发器而非记分板控制，因此不在这里判断
