function mine:tellraw/unload_prompt
playsound block.lever.click player @s
scoreboard objectives add mine_confirm_unload trigger
scoreboard players set $remaining_time mine_confirm_unload 600
scoreboard players enable @s mine_confirm_unload
