execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

scoreboard players add num_blocks_mined/mangrove_roots chain_mining_variables 1
function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/normal {blocks: "minecraft:mangrove_log", mine_function: "logs/mangrove_log/mine"}
function chain_mining:core/generic/find/normal_no_downward {blocks: "minecraft:mangrove_roots", mine_function: "logs/mangrove_log/mine_roots"}
