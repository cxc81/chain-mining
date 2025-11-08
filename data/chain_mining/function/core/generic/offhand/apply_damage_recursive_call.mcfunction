# 根据damage_per_block，多次调用apply_damage_once函数
execute if score damage_attempts chain_mining_variables >= damage_per_block_offhand chain_mining_variables run return 1
scoreboard players add damage_attempts chain_mining_variables 1
function chain_mining:core/generic/offhand/apply_damage_once
function chain_mining:core/generic/offhand/apply_damage_recursive_call
