execute unless function chain_mining:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
function chain_mining:generic/mainhand/apply_damage

function chain_mining:generic/tp_items
function chain_mining:stones/granite/find
