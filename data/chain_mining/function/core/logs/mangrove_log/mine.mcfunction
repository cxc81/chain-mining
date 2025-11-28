execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

scoreboard players add num_blocks_mined/log chain_mining_variables 1
function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/mainhand/apply_damage

execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "minecraft:mangrove_leaves[persistent=false]", mine_function: "logs/generic/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:mangrove_log", mine_function: "logs/mangrove_log/mine"}
function chain_mining:core/generic/find/normal_no_downward {blocks: "minecraft:mangrove_roots", mine_function: "logs/mangrove_log/mine_roots"}
