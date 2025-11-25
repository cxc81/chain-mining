function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/wide/using_predicate {predicate: "sugar_cane/is_chainable", mine_function: "soft_crops/sugar_cane/mine"}
