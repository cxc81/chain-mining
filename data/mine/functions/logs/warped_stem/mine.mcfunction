loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add log_count mine 1
function mine:generic/mainhand/damage

function mine:generic/tp_items
execute if score match_tool_offhand mine matches 1 run function mine:logs/warped_stem/find_wart
function mine:logs/warped_stem/find