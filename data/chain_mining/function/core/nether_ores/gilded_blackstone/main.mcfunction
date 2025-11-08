scoreboard players set num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/normal {blocks: "minecraft:gilded_blackstone", mine_function: "nether_ores/gilded_blackstone/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.gilded_blackstone"}
