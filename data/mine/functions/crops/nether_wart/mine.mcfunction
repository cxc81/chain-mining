loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:nether_wart ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.nether_wart.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] run function mine:crops/nether_wart/replant
function mine:crops/nether_wart/find