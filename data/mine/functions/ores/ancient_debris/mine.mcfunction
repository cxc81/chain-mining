loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add count mine 1
function mine:generic/mainhand/damage

function mine:generic/tp_items
function mine:ores/ancient_debris/find