scoreboard players set num_logs_mined chain_mining_variables 1
scoreboard players set num_leaves_mined chain_mining_variables 0
function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "minecraft:dark_oak_leaves[persistent=false]", mine_function: "logs/generic/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:dark_oak_log", mine_function: "logs/dark_oak_log/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_logs_mined", name_key: "block.minecraft.dark_oak_log"}
function chain_mining:core/generic/add_feedback {score_holder: "num_leaves_mined", name_key: "block.minecraft.dark_oak_leaves"}
