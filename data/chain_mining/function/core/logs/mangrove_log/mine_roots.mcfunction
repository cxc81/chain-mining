execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_mangrove_roots_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/wide {blocks: "minecraft:mangrove_log", mine_function: "logs/mangrove_log/mine"}
function chain_mining:core/logs/mangrove_log/find_roots
