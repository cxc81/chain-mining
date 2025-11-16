advancement revoke @s only chain_mining:harvest/cave_vines

function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,predicate=chain_mining:item/glow_berries,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/harvest/cave_vines/main
function chain_mining:core/generic/end_chain_mining
