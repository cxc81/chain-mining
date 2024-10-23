# 不能连锁掉最下方的甘蔗，也就是说要连锁的甘蔗下方必须有甘蔗
execute unless block ~ ~-1 ~ minecraft:sugar_cane run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1

function chain_mining:generic/tp_items
function chain_mining:crops_1/sugar_cane/find
