execute unless function mine:generic/offhand/can_continue_mining run return fail

execute if block ~ ~ ~ minecraft:warped_wart_block run scoreboard players add wart_count mine_variables 1
execute if block ~ ~ ~ minecraft:shroomlight run scoreboard players add shroomlight_count mine_variables 1
loot spawn ~ ~ ~ mine ~ ~ ~ offhand
setblock ~ ~ ~ minecraft:air destroy

function mine:generic/offhand/damage

function mine:generic/tp_items
