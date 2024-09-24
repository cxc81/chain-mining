loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:warped_stem ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.stem.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count mine 1
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items
execute if score match_tool_off mine matches 1 run function mine:logs/warped_stem/find_wart
function mine:logs/warped_stem/find