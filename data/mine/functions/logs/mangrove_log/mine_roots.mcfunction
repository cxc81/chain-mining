loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:mangrove_roots ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.mangrove_roots.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count3 mine 1
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items
function mine:logs/mangrove_log/find