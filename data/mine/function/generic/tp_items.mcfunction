execute if score @s mine_setting_loot matches 1 as @e[type=minecraft:item,tag=!mine_detected,distance=..1] run data modify entity @s Pos set from entity @p[tag=mine_current_player] Pos
