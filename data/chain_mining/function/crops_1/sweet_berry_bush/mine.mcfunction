loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:sweet_berries"}},limit=1,sort=nearest] run function chain_mining:crops_1/sweet_berry_bush/replant

function chain_mining:generic/tp_items
function chain_mining:crops_1/sweet_berry_bush/find
