execute store result score log_count mine_variables if score @s mine_mangrove_log matches 1..
execute store result score roots_count mine_variables if score @s mine_mangrove_roots matches 1..
scoreboard players set leaves_count mine_variables 0

function mine:generic/tp_items
function mine:logs/generic/find_leaves
function mine:logs/mangrove_log/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"log_count","objective":"mine_variables"},"color":"yellow"},{"text":"个原木，","color":"aqua"},{"score":{"name":"leaves_count","objective":"mine_variables"},"color":"yellow"},{"text":"个树叶，","color":"aqua"},{"score":{"name":"roots_count","objective":"mine_variables"},"color":"yellow"},{"text":"个红树根","color":"aqua"}]
