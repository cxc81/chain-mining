scoreboard players set num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small/using_predicate {predicate: "sweet_berry_bush/is_mature", mine_function: "harvest/sweet_berry_bush/mine"}
function chain_mining:core/generic/add_actionbar_feedback {score_holder: "num_blocks_mined", name_key: "block.minecraft.sweet_berry_bush"}
