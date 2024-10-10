execute unless function mine:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_logs_mined mine_variables 1
function mine:generic/mainhand/damage

function mine:generic/tp_items
execute if score holding_hoe_offhand mine_variables matches 1 run function mine:logs/crimson_stem/find_leaves
function mine:logs/crimson_stem/find
