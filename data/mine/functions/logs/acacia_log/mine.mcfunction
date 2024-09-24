loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:acacia_log ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.wood.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:logs/acacia_log/find_leaves
function mine:logs/acacia_log/find