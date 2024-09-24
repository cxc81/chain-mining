loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:cocoa ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
function mine:generic/damage
function mine:generic/if_to_break
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function mine:crops_2/cocoa/replant
function mine:crops_2/cocoa/find