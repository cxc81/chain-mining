advancement revoke @s only chain_mining:harvest/sweet_berry_bush
execute if function chain_mining:util/is_pack_unloaded run return fail
execute unless score @s chain_mining_setting_soft_crops matches 1 run return fail
execute if predicate chain_mining:player/is_sneaking run return fail

# 此标签的用途：右键采集不消耗饥饿值
tag @s add chain_mining_current_player_harvest
function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,predicate=chain_mining:item/sweet_berries,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/harvest/sweet_berry_bush/main
function chain_mining:core/generic/end_chain_mining
tag @s remove chain_mining_current_player_harvest
