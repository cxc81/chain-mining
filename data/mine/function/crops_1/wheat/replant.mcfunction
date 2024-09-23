execute store result score seed_count mine run data get entity @s Item.count
setblock ~ ~ ~ minecraft:wheat[age=0]
scoreboard players remove seed_count mine 1
execute store result entity @s Item.count int 1 run scoreboard players get seed_count mine
execute if score seed_count mine matches ..0 run kill @s
