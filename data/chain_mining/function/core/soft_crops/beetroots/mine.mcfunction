loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[predicate=chain_mining:item/beetroot_seeds,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/beetroots/replant

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:beetroots[age=3]", mine_function: "soft_crops/beetroots/mine"}
