scoreboard players set num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/wide {blocks: "minecraft:sugar_cane", mine_function: "crops_no_hardness/sugar_cane/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.sugar_cane"}
