execute store result score seed_count mine_variables run data get entity @s Item.count

scoreboard players set cocoa_direction mine_variables -1
#cocoa_direction：0北 1南 2西 3东
execute if block ~ ~ ~-1 minecraft:jungle_log run scoreboard players set cocoa_direction mine_variables 0
execute if block ~ ~ ~1 minecraft:jungle_log run scoreboard players set cocoa_direction mine_variables 1
execute if block ~-1 ~ ~ minecraft:jungle_log run scoreboard players set cocoa_direction mine_variables 2
execute if block ~1 ~ ~ minecraft:jungle_log run scoreboard players set cocoa_direction mine_variables 3

execute if score cocoa_direction mine_variables matches 0 run setblock ~ ~ ~ minecraft:cocoa[facing=north]
execute if score cocoa_direction mine_variables matches 1 run setblock ~ ~ ~ minecraft:cocoa[facing=south]
execute if score cocoa_direction mine_variables matches 2 run setblock ~ ~ ~ minecraft:cocoa[facing=west]
execute if score cocoa_direction mine_variables matches 3 run setblock ~ ~ ~ minecraft:cocoa[facing=east]

execute if score cocoa_direction mine_variables matches 0.. run scoreboard players remove seed_count mine_variables 1
execute store result entity @s Item.count int 1 run scoreboard players get seed_count mine_variables
execute if score seed_count mine_variables matches ..0 run kill @s
