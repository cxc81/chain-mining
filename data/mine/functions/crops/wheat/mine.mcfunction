loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:wheat ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.crop.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"}},limit=1,sort=nearest] run function mine:crops/wheat/replant
function mine:crops/wheat/find