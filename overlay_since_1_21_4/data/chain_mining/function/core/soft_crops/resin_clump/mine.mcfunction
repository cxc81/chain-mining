# @since 1.21.4

function chain_mining:core/generic/mainhand/destroy_block
scoreboard players add num_blocks_mined chain_mining_variables 1

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/normal {blocks: "minecraft:resin_clump", mine_function: "soft_crops/resin_clump/mine"}
