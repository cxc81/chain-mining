loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:glowstone ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count mine 1
execute if score damage_multiplier mine matches 1.. at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute if score damage_multiplier mine matches 2.. at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items
function mine:glowstone/find