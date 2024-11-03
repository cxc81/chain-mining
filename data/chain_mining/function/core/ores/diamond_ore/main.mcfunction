scoreboard players set num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/tp_items_with_orbs
function chain_mining:core/generic/find/normal {blocks: "#minecraft:diamond_ores", mine_function: "ores/diamond_ore/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.diamond_ore"}
