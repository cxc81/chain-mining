scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1] run function chain_mining:core/crops_1/nether_wart/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:nether_wart[age=3]", mine_function: "crops_1/nether_wart/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.nether_wart"}
