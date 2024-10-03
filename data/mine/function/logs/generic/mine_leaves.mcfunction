execute unless function mine:generic/offhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ offhand
setblock ~ ~ ~ minecraft:air destroy
scoreboard players add leaves_count mine_variables 1

function mine:generic/offhand/damage

function mine:generic/tp_items
