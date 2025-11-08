scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[predicate=chain_mining:item/potato,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/potatoes/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:potatoes[age=7]", mine_function: "soft_crops/potatoes/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.potatoes"}
