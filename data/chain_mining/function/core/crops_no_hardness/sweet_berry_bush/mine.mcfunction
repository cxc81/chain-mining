loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:sweet_berries"}},limit=1] run function chain_mining:core/crops_no_hardness/sweet_berry_bush/replant

function chain_mining:core/generic/tp_items
function chain_mining:core/crops_no_hardness/sweet_berry_bush/find
