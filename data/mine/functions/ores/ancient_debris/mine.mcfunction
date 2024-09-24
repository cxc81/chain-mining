loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:ancient_debris ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.ancient_debris.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
function mine:ores/ancient_debris/find