execute if score damagable_offhand chain_mining_variables matches 0 run return fail
# 单次调用此函数，需要根据damage_per_block，多次调用apply_damage_once函数
scoreboard players set damage_attempts chain_mining_variables 0
function chain_mining:core/generic/offhand/apply_damage_recursive_call
