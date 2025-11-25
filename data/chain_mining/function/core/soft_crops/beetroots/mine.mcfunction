function chain_mining:core/generic/mainhand/destroy_block
execute align xyz as @e[type=minecraft:item,predicate=chain_mining:item/beetroot_seeds,tag=!chain_mining_detected,dx=0,dy=0,dz=0,limit=1] run function chain_mining:core/soft_crops/beetroots/replant
function chain_mining:core/generic/tp_items
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/small {blocks: "minecraft:beetroots[age=3]", mine_function: "soft_crops/beetroots/mine"}
