advancement revoke @s only chain_mining:carve/pumpkin

function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,predicate=chain_mining:item/pumpkin_seeds,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/carve/pumpkin/main
function chain_mining:core/generic/end_chain_mining
