# 每一个符合条件的物品都计数
execute store result score one_drop_count mine run data get entity @s Item.Count
scoreboard players operation total_drop_count mine += one_drop_count mine