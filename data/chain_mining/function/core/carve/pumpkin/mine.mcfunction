execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

function chain_mining:core/carve/pumpkin/carve_block_and_tp_items
scoreboard players add num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage_once

function chain_mining:core/generic/find/small {blocks: "minecraft:pumpkin", mine_function: "carve/pumpkin/mine"}
