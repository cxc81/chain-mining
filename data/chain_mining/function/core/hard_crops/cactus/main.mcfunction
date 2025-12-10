scoreboard players set num_blocks_mined/cactus chain_mining_variables 1
scoreboard players set num_blocks_mined/cactus_flower chain_mining_variables 0
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/wide {blocks: "minecraft:cactus", mine_function: "hard_crops/cactus/mine"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/cactus", name_key: "block.minecraft.cactus"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/cactus_flower", name_key: "block.minecraft.cactus_flower"}
