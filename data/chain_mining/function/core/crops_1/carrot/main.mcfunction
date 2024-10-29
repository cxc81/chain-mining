scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:carrot"}},limit=1] run function chain_mining:core/crops_1/carrot/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:carrots[age=7]", mine_function: "crops_1/carrot/mine"}
function chain_mining:core/generic/actionbar_feedback
