execute unless function mine:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined mine_variables 1
function mine:generic/mainhand/apply_damage

function mine:generic/tp_items
function mine:stones/tuff/find
