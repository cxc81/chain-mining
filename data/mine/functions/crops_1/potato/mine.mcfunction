loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:potatoes ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.crop.break block @a ~ ~ ~ 1 0.8
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] run function mine:crops_1/potato/replant
function mine:crops_1/potato/find