execute if score @s chain_mining_trigger matches 100 run function chain_mining:tellraw/instruction/overworld_ores
execute if score @s chain_mining_trigger matches 200 run function chain_mining:tellraw/instruction/nether_ores
execute if score @s chain_mining_trigger matches 300 run function chain_mining:tellraw/instruction/logs
execute if score @s chain_mining_trigger matches 400 run function chain_mining:tellraw/instruction/rocks
execute if score @s chain_mining_trigger matches 500 run function chain_mining:tellraw/instruction/crops_no_hardness
execute if score @s chain_mining_trigger matches 600 run function chain_mining:tellraw/instruction/crops_with_hardness
execute at @s run playsound minecraft:block.lever.click player @s
