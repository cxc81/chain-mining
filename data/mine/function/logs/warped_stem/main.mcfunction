scoreboard players set log_count mine 1
scoreboard players set wart_count mine 0
scoreboard players set shroomlight_count mine 0
function mine:generic/tp_items
execute store success score match_tool_offhand mine if predicate mine:offhand/holding_hoe
execute if score match_tool_offhand mine matches 1 run function mine:logs/warped_stem/find_wart
function mine:logs/warped_stem/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"log_count","objective":"mine"},"color":"yellow"},{"text":"个菌柄，","color":"aqua"},{"score":{"name":"wart_count","objective":"mine"},"color":"yellow"},{"text":"个疣块，","color":"aqua"},{"score":{"name":"shroomlight_count","objective":"mine"},"color":"yellow"},{"text":"个菌光体","color":"aqua"}]
