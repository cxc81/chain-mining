loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:dark_oak_log ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count mine 1
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items
function mine:logs/dark_oak_log/find_leaves
function mine:logs/dark_oak_log/find