execute if score unbreakable_offhand mine matches 1 run return fail
# 每连锁一个方块，有1 / (unbreaking_level_offhand + 1)的几率扣除耐久
execute store result storage mine:data functionCall.unbreaking_level int 1 run scoreboard players get unbreaking_level_offhand mine
execute store result score random_number mine run function mine:generic/roll_random_number with storage mine:data functionCall
execute if score random_number mine matches 0 run scoreboard players add damage_offhand mine 1
