execute unless function chain_mining:core/generic/offhand/can_continue_mining run return fail

execute if block ~ ~ ~ minecraft:warped_wart_block run scoreboard players add num_wart_blocks_mined chain_mining_variables 1
execute if block ~ ~ ~ minecraft:shroomlight run scoreboard players add num_shroomlights_mined chain_mining_variables 1
loot spawn ~ ~ ~ mine ~ ~ ~ offhand
setblock ~ ~ ~ minecraft:air destroy

function chain_mining:core/generic/offhand/apply_damage

function chain_mining:core/generic/tp_items
