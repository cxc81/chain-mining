scoreboard players set num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/tp_items_and_orbs
function chain_mining:core/generic/find/normal {blocks: "#minecraft:emerald_ores", mine_function: "overworld_ores/emerald_ore/mine"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.emerald_ore"}
