execute align xyz as @e[type=minecraft:item,predicate=chain_mining:item/carrot,tag=!chain_mining_detected,dx=0,dy=0,dz=0,limit=1] run function chain_mining:core/soft_crops/carrots/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small {blocks: "minecraft:carrots[age=7]", mine_function: "soft_crops/carrots/mine"}
function chain_mining:core/generic/add_default_actionbar_feedback {name_key: "block.minecraft.carrots"}
