scoreboard players set num_logs_mined chain_mining_variables 1
scoreboard players set num_wart_blocks_mined chain_mining_variables 0
scoreboard players set num_shroomlights_mined chain_mining_variables 0
function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "#chain_mining:leaves_from_warped_stem", mine_function: "logs/warped_stem/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:warped_stem", mine_function: "logs/warped_stem/mine"}
function chain_mining:core/generic/add_feedback {score_holder: "num_logs_mined", name_key: "block.minecraft.crimson_stem"}
function chain_mining:core/generic/add_feedback {score_holder: "num_wart_blocks_mined", name_key: "block.minecraft.warped_wart_block"}
function chain_mining:core/generic/add_feedback {score_holder: "num_shroomlights_mined", name_key: "block.minecraft.shroomlight"}
