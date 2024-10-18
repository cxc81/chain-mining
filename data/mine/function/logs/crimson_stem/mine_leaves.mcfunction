execute unless function mine:generic/offhand/can_continue_mining run return fail

execute if block ~ ~ ~ minecraft:nether_wart_block run scoreboard players add num_wart_blocks_mined mine_variables 1
execute if block ~ ~ ~ minecraft:shroomlight run scoreboard players add num_shroomlights_mined mine_variables 1
loot spawn ~ ~ ~ mine ~ ~ ~ offhand
setblock ~ ~ ~ minecraft:air destroy

function mine:generic/offhand/apply_damage

function mine:generic/tp_items
