# 针对玩家不存在的设置项，赋初值
execute unless score @s chain_mining_setting_overworld_ores = @s chain_mining_setting_overworld_ores run scoreboard players set @s chain_mining_setting_overworld_ores 1
execute unless score @s chain_mining_setting_nether_ores = @s chain_mining_setting_nether_ores run scoreboard players set @s chain_mining_setting_nether_ores 1
execute unless score @s chain_mining_setting_logs = @s chain_mining_setting_logs run scoreboard players set @s chain_mining_setting_logs 1
execute unless score @s chain_mining_setting_rocks = @s chain_mining_setting_rocks run scoreboard players set @s chain_mining_setting_rocks 0
execute unless score @s chain_mining_setting_soft_crops = @s chain_mining_setting_soft_crops run scoreboard players set @s chain_mining_setting_soft_crops 1
execute unless score @s chain_mining_setting_hard_crops = @s chain_mining_setting_hard_crops run scoreboard players set @s chain_mining_setting_hard_crops 1
execute unless score @s chain_mining_setting_loot = @s chain_mining_setting_loot run scoreboard players set @s chain_mining_setting_loot 1
