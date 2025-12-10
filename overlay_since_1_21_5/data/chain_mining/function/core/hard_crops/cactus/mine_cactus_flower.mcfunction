# @since 1.21.5

execute unless block ~ ~ ~ minecraft:cactus_flower run return fail

scoreboard players add num_blocks_mined/cactus_flower chain_mining_variables 1
function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage
