execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

scoreboard players add num_blocks_mined/log chain_mining_variables 1
function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/mainhand/apply_damage

execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "#chain_mining:leaves_from_oak_log[persistent=false]", mine_function: "logs/oak_log/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:oak_log", mine_function: "logs/oak_log/mine"}
