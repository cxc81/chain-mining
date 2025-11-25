execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

scoreboard players add num_blocks_mined/mangrove_roots chain_mining_variables 1
function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/wide {blocks: "minecraft:mangrove_log", mine_function: "logs/mangrove_log/mine"}
function chain_mining:core/logs/mangrove_log/find_roots
