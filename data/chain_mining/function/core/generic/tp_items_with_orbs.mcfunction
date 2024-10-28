function chain_mining:core/generic/tp_items
execute if score @s chain_mining_setting_loot matches 1 run tp @e[type=minecraft:experience_orb,tag=!chain_mining_detected,distance=..1] @s
