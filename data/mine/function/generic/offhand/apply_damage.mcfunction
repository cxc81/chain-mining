execute if score unbreakable_offhand mine_variables matches 1 run return fail
# 每连锁一个方块，有1 / (unbreaking_level_offhand + 1)的几率扣除耐久
execute store result score random_number mine_variables run function mine:generic/roll_random_number with storage mine:data function_call.offhand
execute if score random_number mine_variables matches 0 run scoreboard players add damage_offhand mine_variables 1
