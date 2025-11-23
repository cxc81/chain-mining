scoreboard players set num_blocks_mined chain_mining_variables 1
scoreboard players set num_blocks_mined/log chain_mining_variables 1
scoreboard players set num_blocks_mined/wart_block chain_mining_variables 0
scoreboard players set num_blocks_mined/shroomlight chain_mining_variables 0
function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "#chain_mining:leaves_from_crimson_stem", mine_function: "logs/crimson_stem/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:crimson_stem", mine_function: "logs/crimson_stem/mine"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/log", name_key: "block.minecraft.crimson_stem"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/wart_block", name_key: "block.minecraft.nether_wart_block"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/shroomlight", name_key: "block.minecraft.shroomlight"}
