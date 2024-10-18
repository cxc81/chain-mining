execute unless function mine:generic/offhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ offhand
setblock ~ ~ ~ minecraft:air destroy
scoreboard players add num_leaves_mined mine_variables 1

function mine:generic/offhand/apply_damage

function mine:generic/tp_items
