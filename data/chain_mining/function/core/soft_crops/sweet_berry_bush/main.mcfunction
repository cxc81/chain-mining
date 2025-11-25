execute align xyz as @e[type=minecraft:item,predicate=chain_mining:item/sweet_berries,tag=!chain_mining_detected,dx=0,dy=0,dz=0,limit=1] run function chain_mining:core/soft_crops/sweet_berry_bush/replant
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/find/small/using_predicate {predicate: "sweet_berry_bush/is_mature", mine_function: "soft_crops/sweet_berry_bush/mine"}
function chain_mining:core/generic/add_default_actionbar_feedback {name_key: "block.minecraft.sweet_berry_bush"}
