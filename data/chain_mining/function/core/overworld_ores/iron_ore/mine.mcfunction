execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

function chain_mining:core/generic/mainhand/destroy_block
scoreboard players add num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/normal {blocks: "#minecraft:iron_ores", mine_function: "overworld_ores/iron_ore/mine"}
