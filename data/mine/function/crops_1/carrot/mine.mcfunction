loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add count mine 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] run function mine:crops_1/carrot/replant

function mine:generic/tp_items
function mine:crops_1/carrot/find
