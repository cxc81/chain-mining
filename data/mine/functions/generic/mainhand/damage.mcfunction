# 每连锁一个方块，有1 / (unbreaking_level_mainhand + 1)的几率扣除耐久
# fake_unbreaking_level_mainhand = unbreaking_level_mainhand + 1，所以概率变为1 / fake_unbreaking_level_mainhand
summon minecraft:marker ~ ~ ~ {Tags:["mine_random_number_generator"]}
execute store result score random_number mine run data get entity @e[type=minecraft:marker,tag=mine_random_number_generator,limit=1] UUID[0]
scoreboard players operation random_number mine %= fake_unbreaking_level_mainhand mine
execute if score random_number mine matches 0 run scoreboard players add damage_mainhand mine 1
kill @e[type=minecraft:marker,tag=mine_random_number_generator]