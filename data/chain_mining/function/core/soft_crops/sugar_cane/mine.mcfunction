# 不能连锁掉最下方的甘蔗，也就是说要连锁的甘蔗下方必须有甘蔗
execute unless block ~ ~-1 ~ minecraft:sugar_cane run return fail

function chain_mining:core/generic/mainhand/destroy_block
scoreboard players add num_blocks_mined chain_mining_variables 1
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/wide {blocks: "minecraft:sugar_cane", mine_function: "soft_crops/sugar_cane/mine"}
