scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[predicate=chain_mining:item/cocoa_beans,tag=!chain_mining_detected,limit=1] run function chain_mining:core/hard_crops/cocoa/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/normal {blocks: "minecraft:cocoa[age=2]", mine_function: "hard_crops/cocoa/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.cocoa"}
