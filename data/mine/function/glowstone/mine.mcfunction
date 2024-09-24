loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add count mine 1
execute if score damage_multiplier_mainhand mine matches 1.. run function mine:generic/mainhand/damage
execute if score damage_multiplier_mainhand mine matches 2.. run function mine:generic/mainhand/damage

function mine:generic/tp_items
function mine:glowstone/find
