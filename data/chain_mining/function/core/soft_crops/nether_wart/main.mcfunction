scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,predicate=chain_mining:item/nether_wart,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/nether_wart/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:nether_wart[age=3]", mine_function: "soft_crops/nether_wart/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.nether_wart"}
