function chain_mining:core/generic/mainhand/destroy_block
scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[predicate=chain_mining:item/carrot,tag=!chain_mining_detected,limit=1] run function chain_mining:core/soft_crops/carrots/replant
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:carrots[age=7]", mine_function: "soft_crops/carrots/mine"}
