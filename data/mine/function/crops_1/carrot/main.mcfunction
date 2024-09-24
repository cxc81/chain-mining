scoreboard players set count mine_variables 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] at @s run function mine:crops_1/carrot/replant
function mine:generic/tp_items
function mine:crops_1/carrot/find
function mine:generic/actionbar_feedback
