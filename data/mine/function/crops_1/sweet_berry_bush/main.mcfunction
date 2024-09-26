scoreboard players set count mine_variables 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:sweet_berries"}},limit=1,sort=nearest] at @s run function mine:crops_1/sweet_berry_bush/replant
function mine:generic/tp_items
function mine:crops_1/sweet_berry_bush/find
function mine:generic/actionbar_feedback
