# xp: 0-1
execute store result score #xp_value chain_mining_variables run random value 0..1
execute if score #xp_value chain_mining_variables matches 0 run return run kill @s
return run execute store result entity @s Value short 1 run scoreboard players get #xp_value chain_mining_variables
