advancement revoke @s only chain_mining:harvest/cave_vines
execute if function chain_mining:util/is_pack_unloaded run return fail
execute unless score @s chain_mining_setting_soft_crops matches 1 run return fail

function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,predicate=chain_mining:item/glow_berries,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/harvest/cave_vines/main
function chain_mining:core/generic/end_chain_mining
