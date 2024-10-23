execute unless function chain_mining:glowstone/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
execute if score damage_per_block_mainhand chain_mining_variables matches 1.. run function chain_mining:generic/mainhand/apply_damage
execute if score damage_per_block_mainhand chain_mining_variables matches 2.. run function chain_mining:generic/mainhand/apply_damage

function chain_mining:generic/tp_items
function chain_mining:glowstone/find
