scoreboard players set drop_count chain_mining_variables 0
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] \
    as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:nether_wart"}},distance=..1] run \
    function chain_mining:crops_1/nether_wart/add_drop_count
