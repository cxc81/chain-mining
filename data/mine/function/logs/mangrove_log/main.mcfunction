execute store result score num_logs_mined mine_variables if score @s mine_mangrove_log matches 1..
execute store result score num_mangrove_roots_mined mine_variables if score @s mine_mangrove_roots matches 1..
scoreboard players set num_leaves_mined mine_variables 0

function mine:generic/tp_items
execute store success score holding_hoe_offhand mine_variables if predicate mine:player/offhand/holding_hoe
execute if score holding_hoe_offhand mine_variables matches 1 run function mine:logs/mangrove_log/find_leaves
function mine:logs/mangrove_log/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"num_logs_mined","objective":"mine_variables"},"color":"yellow"},{"text":"个原木，","color":"aqua"},{"score":{"name":"num_leaves_mined","objective":"mine_variables"},"color":"yellow"},{"text":"个树叶，","color":"aqua"},{"score":{"name":"num_mangrove_roots_mined","objective":"mine_variables"},"color":"yellow"},{"text":"个红树根","color":"aqua"}]
