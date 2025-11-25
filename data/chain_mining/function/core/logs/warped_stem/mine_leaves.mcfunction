execute unless function chain_mining:core/generic/offhand/can_continue_mining run return fail

execute if block ~ ~ ~ minecraft:warped_wart_block run scoreboard players add num_blocks_mined/wart_block chain_mining_variables 1
execute if block ~ ~ ~ minecraft:shroomlight run scoreboard players add num_blocks_mined/shroomlight chain_mining_variables 1
function chain_mining:core/generic/offhand/destroy_block
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/offhand/apply_damage
