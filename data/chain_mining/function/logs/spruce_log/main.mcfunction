scoreboard players set num_logs_mined chain_mining_variables 1
scoreboard players set num_leaves_mined chain_mining_variables 0
function chain_mining:generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run function chain_mining:logs/spruce_log/find_leaves
function chain_mining:logs/spruce_log/find
function chain_mining:logs/actionbar_feedback
