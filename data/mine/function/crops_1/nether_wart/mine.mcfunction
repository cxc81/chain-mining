loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add count mine 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] run function mine:crops_1/nether_wart/replant

function mine:generic/tp_items
function mine:crops_1/nether_wart/find
