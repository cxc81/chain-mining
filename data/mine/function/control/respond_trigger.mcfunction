# 1. 对玩家/trigger的数值进行回应
execute as @a if score @s mine_trigger matches -1024 run function mine:control/revert_old_settings
execute as @a if score @s mine_trigger matches 1 run function mine:tellraw/settings/main
execute as @a if score @s mine_trigger matches 2 run function mine:tellraw/instruction/main
execute as @a if score @s mine_trigger matches 3 run function mine:tellraw/changelog/main
execute as @a if score @s mine_trigger matches 10 run scoreboard players set @s mine_setting_ores 0
execute as @a if score @s mine_trigger matches 11 run scoreboard players set @s mine_setting_ores 1
execute as @a if score @s mine_trigger matches 20 run scoreboard players set @s mine_setting_logs 0
execute as @a if score @s mine_trigger matches 21 run scoreboard players set @s mine_setting_logs 1
execute as @a if score @s mine_trigger matches 30 run scoreboard players set @s mine_setting_stones 0
execute as @a if score @s mine_trigger matches 31 run scoreboard players set @s mine_setting_stones 1
execute as @a if score @s mine_trigger matches 40 run scoreboard players set @s mine_setting_glowstone 0
execute as @a if score @s mine_trigger matches 41 run scoreboard players set @s mine_setting_glowstone 1
execute as @a if score @s mine_trigger matches 50 run scoreboard players set @s mine_setting_crops_1 0
execute as @a if score @s mine_trigger matches 51 run scoreboard players set @s mine_setting_crops_1 1
execute as @a if score @s mine_trigger matches 60 run scoreboard players set @s mine_setting_crops_2 0
execute as @a if score @s mine_trigger matches 61 run scoreboard players set @s mine_setting_crops_2 1
execute as @a if score @s mine_trigger matches 70 run scoreboard players set @s mine_setting_loot 0
execute as @a if score @s mine_trigger matches 71 run scoreboard players set @s mine_setting_loot 1
execute as @a if score @s mine_trigger matches 101 run function mine:tellraw/instruction/ores
execute as @a if score @s mine_trigger matches 102 run function mine:tellraw/instruction/logs
execute as @a if score @s mine_trigger matches 103 run function mine:tellraw/instruction/stones
execute as @a if score @s mine_trigger matches 104 run function mine:tellraw/instruction/glowstone
execute as @a if score @s mine_trigger matches 105 run function mine:tellraw/instruction/crops_1
execute as @a if score @s mine_trigger matches 106 run function mine:tellraw/instruction/crops_2
execute as @a if score @s mine_trigger matches 110 run function mine:control/unload_warning
execute as @a if score @s mine_trigger matches 10..99 run function mine:tellraw/settings/main
execute as @a if score @s mine_trigger matches 10..99 at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2
execute as @a if score @s mine_trigger matches 1..9 at @s run playsound block.lever.click player @s
execute as @a if score @s mine_trigger matches 100..999 at @s run playsound block.lever.click player @s
# 2. 数值归零
scoreboard players reset @a mine_trigger
# 3. 允许玩家利用/trigger操控
scoreboard players enable @a mine_trigger
# 4. 监听卸载确认
execute as @a if score @s mine_confirm_unload matches 1 run function mine:unload
