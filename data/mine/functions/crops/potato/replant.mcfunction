execute store result score seed_count mine run data get entity @s Item.Count
setblock ~ ~ ~ minecraft:potatoes
scoreboard players remove seed_count mine 1
execute store result entity @s Item.Count byte 1 run scoreboard players get seed_count mine