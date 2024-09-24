# 每一个符合条件的物品都计数
execute store result score one_drop_count mine_variables run data get entity @s Item.count
scoreboard players operation total_drop_count mine_variables += one_drop_count mine_variables
