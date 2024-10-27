# 扣除耐久几率：1 / (unbreaking_level_mainhand + 1)
execute store result score random_number chain_mining_variables run function chain_mining:generic/roll_random_number with storage chain_mining:data function_call.mainhand
execute if score random_number chain_mining_variables matches 0 run scoreboard players add damage_mainhand chain_mining_variables 1
