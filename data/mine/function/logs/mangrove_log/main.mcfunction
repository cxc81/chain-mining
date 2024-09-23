execute if score @s mine_mangrove matches 1.. run scoreboard players set log_count mine 1
execute unless score @s mine_mangrove matches 1.. run scoreboard players set log_count mine 0
scoreboard players set leaves_count mine 0
execute if score @s mine_mangrove_roots matches 1.. run scoreboard players set roots_count mine 1
execute unless score @s mine_mangrove_roots matches 1.. run scoreboard players set roots_count mine 0

function mine:generic/tp_items
function mine:logs/generic/find_leaves
function mine:logs/mangrove_log/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"log_count","objective":"mine"},"color":"yellow"},{"text":"个原木，","color":"aqua"},{"score":{"name":"leaves_count","objective":"mine"},"color":"yellow"},{"text":"个树叶，","color":"aqua"},{"score":{"name":"roots_count","objective":"mine"},"color":"yellow"},{"text":"个红树根","color":"aqua"}]
