scoreboard players set num_logs_mined mine_variables 1
scoreboard players set num_wart_blocks_mined mine_variables 0
scoreboard players set num_shroomlights_mined mine_variables 0
function mine:generic/tp_items
execute store success score holding_hoe_offhand mine_variables if predicate mine:player/offhand/holding_hoe
execute if score holding_hoe_offhand mine_variables matches 1 run function mine:logs/warped_stem/find_leaves
function mine:logs/warped_stem/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"num_logs_mined","objective":"mine_variables"},"color":"yellow"},{"text":"个菌柄，","color":"aqua"},{"score":{"name":"num_wart_blocks_mined","objective":"mine_variables"},"color":"yellow"},{"text":"个疣块，","color":"aqua"},{"score":{"name":"num_shroomlights_mined","objective":"mine_variables"},"color":"yellow"},{"text":"个菌光体","color":"aqua"}]
