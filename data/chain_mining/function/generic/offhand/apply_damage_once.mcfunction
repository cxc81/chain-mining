execute if score damagable_offhand chain_mining_variables matches 1 run return fail
# 扣除耐久几率：1 / (unbreaking_level_offhand + 1)
execute store result score random_number chain_mining_variables run function chain_mining:generic/roll_random_number with storage chain_mining:data function_call.offhand
execute if score random_number chain_mining_variables matches 0 run scoreboard players add damage_offhand chain_mining_variables 1
