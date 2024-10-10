scoreboard players set num_blocks_mined mine_variables 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:wheat_seeds"}},limit=1,sort=nearest] at @s run function mine:crops_1/wheat/replant
function mine:generic/tp_items
function mine:crops_1/wheat/find
function mine:generic/actionbar_feedback
