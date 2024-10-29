scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:beetroot_seeds"}},limit=1] run function chain_mining:core/crops_1/beetroot/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:beetroots[age=3]", mine_function: "crops_1/beetroot/mine"}
function chain_mining:core/generic/actionbar_feedback
