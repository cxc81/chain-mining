advancement revoke @s only chain_mining:carve/pumpkin
execute if function chain_mining:util/is_pack_unloaded run return fail
execute unless score @s chain_mining_setting_hard_crops matches 1 run return fail
execute if predicate chain_mining:player/is_sneaking run return fail

# 此处不同于一般的连锁采集入口函数————雕刻南瓜不要求手持的物品有tool组件
tag @s add chain_mining_current_player_carve_pumpkin
function chain_mining:core/generic/begin_chain_mining
execute at @e[type=minecraft:item,predicate=chain_mining:item/pumpkin_seeds,tag=!chain_mining_detected,limit=1,sort=nearest] run function chain_mining:core/carve/pumpkin/main
function chain_mining:core/generic/end_chain_mining
tag @s remove chain_mining_current_player_carve_pumpkin
