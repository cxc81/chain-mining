loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:cocoa ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count mine 1
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function mine:crops_2/cocoa/replant
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/damage
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run function mine:generic/if_to_break

function mine:generic/tp_items
function mine:crops_2/cocoa/find