execute store result score num_logs_mined chain_mining_variables if score @s chain_mining_mangrove_log matches 1..
execute store result score num_mangrove_roots_mined chain_mining_variables if score @s chain_mining_mangrove_roots matches 1..
scoreboard players set num_leaves_mined chain_mining_variables 0

function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "minecraft:mangrove_leaves[persistent=false,waterlogged=false]", mine_function: "logs/generic/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:mangrove_log", mine_function: "logs/mangrove_log/mine"}
function chain_mining:core/logs/mangrove_log/find_roots
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"num_logs_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个原木，","color":"aqua"},{"score":{"name":"num_leaves_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个树叶，","color":"aqua"},{"score":{"name":"num_mangrove_roots_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个红树根","color":"aqua"}]
