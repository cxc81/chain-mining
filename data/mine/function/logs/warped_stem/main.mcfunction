scoreboard players set log_count mine_variables 1
scoreboard players set wart_count mine_variables 0
scoreboard players set shroomlight_count mine_variables 0
function mine:generic/tp_items
execute store success score holding_hoe_offhand mine_variables if predicate mine:player/offhand/holding_hoe
execute if score holding_hoe_offhand mine_variables matches 1 run function mine:logs/warped_stem/find_wart
function mine:logs/warped_stem/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"log_count","objective":"mine_variables"},"color":"yellow"},{"text":"个菌柄，","color":"aqua"},{"score":{"name":"wart_count","objective":"mine_variables"},"color":"yellow"},{"text":"个疣块，","color":"aqua"},{"score":{"name":"shroomlight_count","objective":"mine_variables"},"color":"yellow"},{"text":"个菌光体","color":"aqua"}]
