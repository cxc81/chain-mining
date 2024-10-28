scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:wheat_seeds"}},limit=1,sort=nearest] at @s run function chain_mining:core/crops_1/wheat/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/crops_1/wheat/find
function chain_mining:core/generic/actionbar_feedback
