loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:andesite ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.stone.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:stones/andesite/find