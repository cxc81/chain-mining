execute unless function chain_mining:core/generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_logs_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "minecraft:jungle_leaves[persistent=false,waterlogged=false]", mine_function: "logs/generic/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:jungle_log", mine_function: "logs/jungle_log/mine"}
