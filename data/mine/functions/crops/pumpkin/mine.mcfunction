loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:pumpkin ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.wood.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:crops/pumpkin/find