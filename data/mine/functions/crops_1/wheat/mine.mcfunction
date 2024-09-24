loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:wheat ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.crop.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count mine 1
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:wheat_seeds"}},limit=1,sort=nearest] run function mine:crops_1/wheat/replant

function mine:generic/tp_items
function mine:crops_1/wheat/find