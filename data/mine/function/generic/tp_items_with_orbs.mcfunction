function mine:generic/tp_items
execute if score @s mine_setting_loot matches 1 run tp @e[type=minecraft:experience_orb,tag=!mine_detected,distance=..1] @s
