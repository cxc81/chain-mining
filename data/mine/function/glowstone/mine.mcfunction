execute unless function mine:glowstone/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add count mine_variables 1
execute if score damage_per_block_mainhand mine_variables matches 1.. run function mine:generic/mainhand/damage
execute if score damage_per_block_mainhand mine_variables matches 2.. run function mine:generic/mainhand/damage

function mine:generic/tp_items
function mine:glowstone/find
