advancement revoke @s only chain_mining:harvest/sweet_berry_bush

function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,predicate=chain_mining:item/sweet_berries,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/harvest/sweet_berry_bush/main
function chain_mining:core/generic/end_chain_mining
