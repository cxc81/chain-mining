execute unless function chain_mining:core/generic/offhand/can_continue_mining run return fail

execute if block ~ ~ ~ minecraft:oak_leaves run scoreboard players add num_leaves_mined chain_mining_variables 1
execute if block ~ ~ ~ minecraft:azalea_leaves run scoreboard players add num_azalea_leaves_mined chain_mining_variables 1
execute if block ~ ~ ~ minecraft:flowering_azalea_leaves run scoreboard players add num_flowering_azalea_leaves_mined chain_mining_variables 1
loot spawn ~ ~ ~ mine ~ ~ ~ offhand
setblock ~ ~ ~ minecraft:air destroy

function chain_mining:core/generic/offhand/apply_damage

function chain_mining:core/generic/tp_items
