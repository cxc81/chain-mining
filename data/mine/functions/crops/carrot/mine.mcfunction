loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
particle minecraft:block minecraft:carrots ~ ~ ~ 0.5 0.5 0.5 0 40
playsound minecraft:block.crop.break block @a
setblock ~ ~ ~ minecraft:air
scoreboard players add count mine 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] run function mine:crops/carrot/replant
function mine:crops/carrot/find