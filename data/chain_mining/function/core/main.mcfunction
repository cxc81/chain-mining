# 1. 主世界矿石
execute if score @s chain_mining_setting_overworld_ores matches 1 run function chain_mining:core/overworld_ores/main
# 2. 下界矿石
execute if score @s chain_mining_setting_nether_ores matches 1 run function chain_mining:core/nether_ores/main
# 3. 原木/菌柄
execute if score @s chain_mining_setting_logs matches 1 run function chain_mining:core/logs/main
# 4. 岩石
execute if score @s chain_mining_setting_rocks matches 1 run function chain_mining:core/rocks/main
# 5. 软作物
execute if score @s chain_mining_setting_soft_crops matches 1 run function chain_mining:core/soft_crops/main
# 6. 硬作物
execute if score @s chain_mining_setting_hard_crops matches 1 run function chain_mining:core/hard_crops/main
# 雕刻与采摘是由进度触发器而非记分板控制，因此不在这里判断
