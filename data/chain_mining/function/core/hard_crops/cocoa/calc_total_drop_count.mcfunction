scoreboard players set total_drop_count chain_mining_variables 0
execute at @e[predicate=chain_mining:item/cocoa_beans,tag=!chain_mining_detected,limit=1,sort=nearest] \
    as @e[predicate=chain_mining:item/cocoa_beans,tag=!chain_mining_detected,distance=..1] run \
    function chain_mining:core/hard_crops/cocoa/add_drop_count
