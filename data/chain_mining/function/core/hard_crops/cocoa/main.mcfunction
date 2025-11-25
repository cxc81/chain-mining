execute align xyz as @e[type=minecraft:item,predicate=chain_mining:item/cocoa_beans,tag=!chain_mining_detected,dx=0,dy=0,dz=0,limit=1] run function chain_mining:core/hard_crops/cocoa/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/normal {blocks: "minecraft:cocoa[age=2]", mine_function: "hard_crops/cocoa/mine"}
function chain_mining:core/generic/add_default_actionbar_feedback {name_key: "block.minecraft.cocoa"}
