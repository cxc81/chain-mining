execute if score @s mine_mangrove matches 1.. run scoreboard players set log_count mine 1
execute unless score @s mine_mangrove matches 1.. run scoreboard players set log_count mine 0
scoreboard players set leaves_count mine 0
execute if score @s mine_mangrove_roots matches 1.. run scoreboard players set roots_count mine 1
execute unless score @s mine_mangrove_roots matches 1.. run scoreboard players set roots_count mine 0

function mine:generic/tp_items
function mine:logs/generic/find_leaves
function mine:logs/mangrove_log/find
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86","color":"aqua"},{"score":{"name":"log_count","objective":"mine"},"color":"yellow"},{"text":"\u4e2a\u539f\u6728\uff0c","color":"aqua"},{"score":{"name":"leaves_count","objective":"mine"},"color":"yellow"},{"text":"\u4e2a\u6811\u53f6\uff0c","color":"aqua"},{"score":{"name":"roots_count","objective":"mine"},"color":"yellow"},{"text":"\u4e2a\u7ea2\u6811\u6839","color":"aqua"}]