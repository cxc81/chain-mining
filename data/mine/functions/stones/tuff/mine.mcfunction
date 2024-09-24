loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:tuff ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.tuff.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:stones/tuff/find