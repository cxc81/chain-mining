# 每一个符合条件的物品都计数
execute store result score drop_count_one_item mine_variables run data get entity @s Item.count
scoreboard players operation drop_count mine_variables += drop_count_one_item mine_variables
