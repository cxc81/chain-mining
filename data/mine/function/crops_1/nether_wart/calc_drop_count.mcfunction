execute store result score drop_count_tmp mine_variables run data get entity @s Item.count
scoreboard players operation drop_count mine_variables += drop_count_tmp mine_variables
