loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:potatoes ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.crop.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] run function mine:crops/potato/replant
function mine:crops/potato/find