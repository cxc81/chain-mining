execute unless function mine:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add count mine_variables 1
function mine:generic/mainhand/damage

function mine:generic/tp_items
function mine:ores/gold_ore/find
