# 此函数仅在连锁采集结束时被调用一次
# 仅当物品可损伤(damagable)时才更新玩家主手物品
execute unless score damagable_mainhand chain_mining_variables matches 1 run return fail

execute if score damage_mainhand chain_mining_variables >= max_damage_mainhand chain_mining_variables run return run function chain_mining:core/generic/mainhand/break
return run function chain_mining:core/generic/mainhand/set_damage
