scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] at @s run function chain_mining:core/crops_1/potato/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/crops_1/potato/find
function chain_mining:core/generic/actionbar_feedback
