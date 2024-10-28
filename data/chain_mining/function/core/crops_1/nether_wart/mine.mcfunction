loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] run function chain_mining:core/crops_1/nether_wart/replant

function chain_mining:core/generic/tp_items
function chain_mining:core/crops_1/nether_wart/find
