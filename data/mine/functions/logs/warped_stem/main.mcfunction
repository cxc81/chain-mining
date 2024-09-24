scoreboard players set log_count mine 1
scoreboard players set wart_count mine 0
scoreboard players set shroomlight_count mine 0
function mine:generic/tp_items
execute store success score match_tool_offhand mine if predicate mine:offhand/holding_hoe
execute if score match_tool_offhand mine matches 1 run function mine:logs/warped_stem/find_wart
function mine:logs/warped_stem/find
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86","color":"aqua"},{"score":{"name":"log_count","objective":"mine"},"color":"yellow"},{"text":"\u4e2a\u83cc\u67c4\uff0c","color":"aqua"},{"score":{"name":"wart_count","objective":"mine"},"color":"yellow"},{"text":"\u4e2a\u75a3\u5757\uff0c","color":"aqua"},{"score":{"name":"shroomlight_count","objective":"mine"},"color":"yellow"},{"text":"\u4e2a\u83cc\u5149\u4f53","color":"aqua"}]