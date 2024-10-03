execute unless function mine:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add log_count mine_variables 1
function mine:generic/mainhand/damage

function mine:generic/tp_items
execute if score holding_hoe_offhand mine_variables matches 1 run function mine:logs/warped_stem/find_wart
function mine:logs/warped_stem/find
