execute store result score num_logs_mined chain_mining_variables if score @s chain_mining_mangrove_log matches 1..
execute store result score num_mangrove_roots_mined chain_mining_variables if score @s chain_mining_mangrove_roots matches 1..
scoreboard players set num_leaves_mined chain_mining_variables 0

function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/logs/generic/find_leaves {blocks: "minecraft:mangrove_leaves"}
function chain_mining:core/logs/mangrove_log/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"num_logs_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个原木，","color":"aqua"},{"score":{"name":"num_leaves_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个树叶，","color":"aqua"},{"score":{"name":"num_mangrove_roots_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个红树根","color":"aqua"}]
