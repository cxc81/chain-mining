scoreboard players set log_count mine_variables 1
scoreboard players set leaves_count mine_variables 0
function mine:generic/tp_items
execute store success score holding_tool_for_leaves mine_variables if predicate mine:player/offhand/holding_tool_for_leaves
execute if score holding_tool_for_leaves mine_variables matches 1 run function mine:logs/generic/find_leaves
function mine:logs/birch_log/find
function mine:logs/actionbar_feedback
