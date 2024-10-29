scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:potato"}},limit=1] run function chain_mining:core/crops_1/potato/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:potatoes[age=7]", mine_function: "crops_1/potato/mine"}
function chain_mining:core/generic/actionbar_feedback
