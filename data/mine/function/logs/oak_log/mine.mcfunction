loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add log_count mine 1
function mine:generic/mainhand/damage

function mine:generic/tp_items
function mine:logs/generic/find_leaves
function mine:logs/oak_log/find
