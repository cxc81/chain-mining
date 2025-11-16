function chain_mining:core/generic/mainhand/destroy_block
scoreboard players add num_blocks_mined chain_mining_variables 1
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:pitcher_crop[age=4]", mine_function: "soft_crops/pitcher_crop/mine"}
