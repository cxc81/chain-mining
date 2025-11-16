scoreboard players set num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:pitcher_crop[age=4]", mine_function: "soft_crops/pitcher_crop/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.pitcher_crop"}

