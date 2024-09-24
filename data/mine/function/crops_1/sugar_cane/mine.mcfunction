# 不能连锁掉最下方的甘蔗，也就是说要连锁的甘蔗下方必须有甘蔗
execute unless block ~ ~-1 ~ minecraft:sugar_cane run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add count mine_variables 1

function mine:generic/tp_items
function mine:crops_1/sugar_cane/find
