execute store result score seed_count mine_variables run data get entity @s Item.count
setblock ~ ~ ~ minecraft:wheat[age=0]
scoreboard players remove seed_count mine_variables 1
execute store result entity @s Item.count int 1 run scoreboard players get seed_count mine_variables
execute if score seed_count mine_variables matches ..0 run kill @s
