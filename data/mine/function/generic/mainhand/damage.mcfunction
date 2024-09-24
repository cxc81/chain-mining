execute if score unbreakable_mainhand mine_variables matches 1 run return fail
# 每连锁一个方块，有1 / (unbreaking_level_mainhand + 1)的几率扣除耐久
execute store result storage mine:data function_call.unbreaking_level int 1 run scoreboard players get unbreaking_level_mainhand mine_variables
execute store result score random_number mine_variables run function mine:generic/roll_random_number with storage mine:data function_call
execute if score random_number mine_variables matches 0 run scoreboard players add damage_mainhand mine_variables 1
