function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
scoreboard players add num_blocks_mined chain_mining_variables 1
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/normal {blocks: "#minecraft:cave_vines[berries=true]", mine_function: "soft_crops/cave_vines/mine"}
