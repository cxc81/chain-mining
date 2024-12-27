# 每一个符合条件的物品都计数
execute store result score current_drop_count chain_mining_variables run data get entity @s Item.count
scoreboard players operation total_drop_count chain_mining_variables += current_drop_count chain_mining_variables
