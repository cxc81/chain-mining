# @since 1.21.4

function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/normal {blocks: "minecraft:resin_clump", mine_function: "soft_crops/resin_clump/mine"}
