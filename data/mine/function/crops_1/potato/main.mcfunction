scoreboard players set num_blocks_mined mine_variables 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] at @s run function mine:crops_1/potato/replant
function mine:generic/tp_items
function mine:crops_1/potato/find
function mine:generic/actionbar_feedback
