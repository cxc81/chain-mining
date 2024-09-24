function mine:generic/tp_items
execute if score @s mine_setting_loot matches 1 run tp @e[type=minecraft:experience_orb,tag=mine_experience_orb,distance=..1] @s