scoreboard players set total_drop_count chain_mining_variables 0
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] \
    as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},distance=..1] run \
    function chain_mining:core/hard_crops/cocoa/add_drop_count
