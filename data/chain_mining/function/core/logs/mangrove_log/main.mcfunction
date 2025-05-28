execute store result score num_logs_mined chain_mining_variables if score @s chain_mining_mangrove_log matches 1..
execute store result score num_mangrove_roots_mined chain_mining_variables if score @s chain_mining_mangrove_roots matches 1..
scoreboard players set num_leaves_mined chain_mining_variables 0

function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "minecraft:mangrove_leaves[persistent=false]", mine_function: "logs/generic/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:mangrove_log", mine_function: "logs/mangrove_log/mine"}
function chain_mining:core/logs/mangrove_log/find_roots
function chain_mining:core/generic/add_feedback {score_holder: "num_logs_mined", name_key: "block.minecraft.mangrove_log"}
function chain_mining:core/generic/add_feedback {score_holder: "num_leaves_mined", name_key: "block.minecraft.mangrove_leaves"}
function chain_mining:core/generic/add_feedback {score_holder: "num_mangrove_roots_mined", name_key: "block.minecraft.mangrove_roots"}
