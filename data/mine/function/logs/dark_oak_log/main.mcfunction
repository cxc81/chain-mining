scoreboard players set num_logs_mined mine_variables 1
scoreboard players set num_leaves_mined mine_variables 0
function mine:generic/tp_items
execute store success score holding_hoe_offhand mine_variables if predicate mine:player/offhand/holding_hoe
execute if score holding_hoe_offhand mine_variables matches 1 run function mine:logs/dark_oak_log/find_leaves
function mine:logs/dark_oak_log/find
function mine:logs/actionbar_feedback
