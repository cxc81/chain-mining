# 此处仅在首个挖掘的方块是红树原木而非红树根时才会执行
scoreboard players set num_blocks_mined/log chain_mining_variables 1
scoreboard players set num_blocks_mined/leaves chain_mining_variables 0
scoreboard players set num_blocks_mined/mangrove_roots chain_mining_variables 0

function chain_mining:core/generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run \
    function chain_mining:core/generic/find/huge {blocks: "minecraft:mangrove_leaves[persistent=false]", mine_function: "logs/generic/mine_leaves"}
function chain_mining:core/generic/find/wide {blocks: "minecraft:mangrove_log", mine_function: "logs/mangrove_log/mine"}
function chain_mining:core/generic/find/normal_no_downward {blocks: "minecraft:mangrove_roots", mine_function: "logs/mangrove_log/mine_roots"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/log", name_key: "block.minecraft.mangrove_log"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/leaves", name_key: "block.minecraft.mangrove_leaves"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined/mangrove_roots", name_key: "block.minecraft.mangrove_roots"}
