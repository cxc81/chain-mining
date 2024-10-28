execute unless function chain_mining:core/generic/offhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ offhand
setblock ~ ~ ~ minecraft:air destroy
scoreboard players add num_leaves_mined chain_mining_variables 1

function chain_mining:core/generic/offhand/apply_damage

function chain_mining:core/generic/tp_items
