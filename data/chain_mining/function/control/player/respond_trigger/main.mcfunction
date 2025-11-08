# 1. 监听卸载确认
execute if score @s chain_mining_confirm_unload matches 1 run function chain_mining:unload

# 2. 判断是否触发了常规的trigger
execute store success score reacted_trigger chain_mining_variables run scoreboard players enable @s chain_mining_trigger
execute if score reacted_trigger chain_mining_variables matches 0 run return fail

# 3. 对/trigger的数值进行回应
execute if score @s chain_mining_trigger matches 1..9 run function chain_mining:control/player/respond_trigger/show_general
execute if score @s chain_mining_trigger matches 10..99 run function chain_mining:control/player/respond_trigger/change_setting
execute if score @s chain_mining_trigger matches 100..999 run function chain_mining:control/player/respond_trigger/show_instruction

# 4. 数值清空，并重新启用
scoreboard players reset @s chain_mining_trigger
scoreboard players enable @s chain_mining_trigger
