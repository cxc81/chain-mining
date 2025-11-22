execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
scoreboard players add num_logs_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage

execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "#chain_mining:leaves_from_warped_stem", mine_function: "logs/warped_stem/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:warped_stem", mine_function: "logs/warped_stem/mine"}
