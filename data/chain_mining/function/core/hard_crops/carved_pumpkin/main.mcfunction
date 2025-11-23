scoreboard players set num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:carved_pumpkin", mine_function: "hard_crops/carved_pumpkin/mine"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.carved_pumpkin"}
