loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:nether_wart ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.nether_wart.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air

scoreboard players add count mine 1
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] run function mine:crops_1/nether_wart/replant

function mine:generic/tp_items
function mine:crops_1/nether_wart/find