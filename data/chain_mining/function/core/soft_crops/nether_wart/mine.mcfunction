function chain_mining:core/generic/mainhand/destroy_block
execute align xyz as @e[type=minecraft:item,predicate=chain_mining:item/nether_wart,tag=!chain_mining_detected,dx=0,dy=0,dz=0,limit=1] run function chain_mining:core/soft_crops/nether_wart/replant
function chain_mining:core/generic/tp_items
execute if items entity @s weapon.mainhand minecraft:shears run function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/small {blocks: "minecraft:nether_wart[age=3]", mine_function: "soft_crops/nether_wart/mine"}
