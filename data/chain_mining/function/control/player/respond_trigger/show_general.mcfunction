execute if score @s chain_mining_trigger matches 1 run function chain_mining:tellraw/settings/main
execute if score @s chain_mining_trigger matches 2 run function chain_mining:tellraw/instruction/main
execute if score @s chain_mining_trigger matches 3 run function chain_mining:tellraw/changelog/main
execute at @s run playsound minecraft:block.lever.click player @s
