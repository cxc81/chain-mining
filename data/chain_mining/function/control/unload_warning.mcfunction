function chain_mining:tellraw/unload_prompt
playsound minecraft:block.lever.click player @s
scoreboard objectives add chain_mining_confirm_unload trigger
scoreboard players set $remaining_time chain_mining_confirm_unload 600
scoreboard players enable @s chain_mining_confirm_unload
