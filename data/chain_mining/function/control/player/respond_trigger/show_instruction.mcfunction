execute if score @s chain_mining_trigger matches 100 run function chain_mining:tellraw/instruction/overworld_ores
execute if score @s chain_mining_trigger matches 200 run function chain_mining:tellraw/instruction/nether_ores
execute if score @s chain_mining_trigger matches 300 run function chain_mining:tellraw/instruction/logs
execute if score @s chain_mining_trigger matches 400 run function chain_mining:tellraw/instruction/rocks
execute if score @s chain_mining_trigger matches 500 run function chain_mining:tellraw/instruction/soft_crops
execute if score @s chain_mining_trigger matches 600 run function chain_mining:tellraw/instruction/hard_crops
execute at @s run playsound minecraft:block.lever.click player @s
