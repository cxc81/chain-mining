# 1. 对/trigger的数值进行回应
execute if score @s chain_mining_trigger matches 1 run function chain_mining:tellraw/settings/main
execute if score @s chain_mining_trigger matches 2 run function chain_mining:tellraw/instruction/main
execute if score @s chain_mining_trigger matches 3 run function chain_mining:tellraw/changelog/main
execute if score @s chain_mining_trigger matches 1..9 run playsound minecraft:block.lever.click player @s

execute if score @s chain_mining_trigger matches 10 run scoreboard players set @s chain_mining_setting_ores 0
execute if score @s chain_mining_trigger matches 11 run scoreboard players set @s chain_mining_setting_ores 1
execute if score @s chain_mining_trigger matches 20 run scoreboard players set @s chain_mining_setting_logs 0
execute if score @s chain_mining_trigger matches 21 run scoreboard players set @s chain_mining_setting_logs 1
execute if score @s chain_mining_trigger matches 30 run scoreboard players set @s chain_mining_setting_stones 0
execute if score @s chain_mining_trigger matches 31 run scoreboard players set @s chain_mining_setting_stones 1
execute if score @s chain_mining_trigger matches 40 run scoreboard players set @s chain_mining_setting_glowstone 0
execute if score @s chain_mining_trigger matches 41 run scoreboard players set @s chain_mining_setting_glowstone 1
execute if score @s chain_mining_trigger matches 50 run scoreboard players set @s chain_mining_setting_crops_1 0
execute if score @s chain_mining_trigger matches 51 run scoreboard players set @s chain_mining_setting_crops_1 1
execute if score @s chain_mining_trigger matches 60 run scoreboard players set @s chain_mining_setting_crops_2 0
execute if score @s chain_mining_trigger matches 61 run scoreboard players set @s chain_mining_setting_crops_2 1
execute if score @s chain_mining_trigger matches 70 run scoreboard players set @s chain_mining_setting_loot 0
execute if score @s chain_mining_trigger matches 71 run scoreboard players set @s chain_mining_setting_loot 1
execute if score @s chain_mining_trigger matches 10..99 run function chain_mining:tellraw/settings/main
execute if score @s chain_mining_trigger matches 10..99 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

execute if score @s chain_mining_trigger matches 101 run function chain_mining:tellraw/instruction/ores
execute if score @s chain_mining_trigger matches 102 run function chain_mining:tellraw/instruction/logs
execute if score @s chain_mining_trigger matches 103 run function chain_mining:tellraw/instruction/stones
execute if score @s chain_mining_trigger matches 104 run function chain_mining:tellraw/instruction/glowstone
execute if score @s chain_mining_trigger matches 105 run function chain_mining:tellraw/instruction/crops_1
execute if score @s chain_mining_trigger matches 106 run function chain_mining:tellraw/instruction/crops_2
execute if score @s chain_mining_trigger matches 100..999 run playsound minecraft:block.lever.click player @s

# 2. 数值归零
scoreboard players reset @s chain_mining_trigger
# 3. 允许玩家利用/trigger操控
scoreboard players enable @s chain_mining_trigger
# 4. 监听卸载确认
execute if score @s chain_mining_confirm_unload matches 1 run function chain_mining:unload
