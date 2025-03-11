loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[predicate=chain_mining:item/nether_wart,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/nether_wart/replant

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:nether_wart[age=3]", mine_function: "soft_crops/nether_wart/mine"}
