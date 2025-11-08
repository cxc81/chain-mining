execute if score @s chain_mining_trigger matches 10 run scoreboard players set @s chain_mining_setting_overworld_ores 0
execute if score @s chain_mining_trigger matches 11 run scoreboard players set @s chain_mining_setting_overworld_ores 1
execute if score @s chain_mining_trigger matches 20 run scoreboard players set @s chain_mining_setting_nether_ores 0
execute if score @s chain_mining_trigger matches 21 run scoreboard players set @s chain_mining_setting_nether_ores 1
execute if score @s chain_mining_trigger matches 30 run scoreboard players set @s chain_mining_setting_logs 0
execute if score @s chain_mining_trigger matches 31 run scoreboard players set @s chain_mining_setting_logs 1
execute if score @s chain_mining_trigger matches 40 run scoreboard players set @s chain_mining_setting_rocks 0
execute if score @s chain_mining_trigger matches 41 run scoreboard players set @s chain_mining_setting_rocks 1
execute if score @s chain_mining_trigger matches 50 run scoreboard players set @s chain_mining_setting_soft_crops 0
execute if score @s chain_mining_trigger matches 51 run scoreboard players set @s chain_mining_setting_soft_crops 1
execute if score @s chain_mining_trigger matches 60 run scoreboard players set @s chain_mining_setting_hard_crops 0
execute if score @s chain_mining_trigger matches 61 run scoreboard players set @s chain_mining_setting_hard_crops 1
execute if score @s chain_mining_trigger matches 70 run scoreboard players set @s chain_mining_setting_loot 0
execute if score @s chain_mining_trigger matches 71 run scoreboard players set @s chain_mining_setting_loot 1

function chain_mining:tellraw/settings/main
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
