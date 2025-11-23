scoreboard players set num_blocks_mined chain_mining_variables 1
scoreboard players set num_blocks_mined/log chain_mining_variables 1
scoreboard players set num_blocks_mined/leaves chain_mining_variables 0
function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "minecraft:cherry_leaves[persistent=false]", mine_function: "logs/generic/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:cherry_log", mine_function: "logs/cherry_log/mine"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/log", name_key: "block.minecraft.cherry_log"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/leaves", name_key: "block.minecraft.cherry_leaves"}
