# xp: 0-2
execute store result entity @s Value short 1 run random value 0..2
execute if data entity @s {Value: 0s} run kill @s
