# 不能连锁掉最下方的仙人掌，也就是说要连锁的仙人掌下方必须有仙人掌
execute unless block ~ ~-1 ~ minecraft:cactus run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/wide {blocks: "minecraft:cactus", mine_function: "hard_crops/cactus/mine"}
