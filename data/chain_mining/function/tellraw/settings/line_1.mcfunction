# 矿石 & 原木/菌柄
# 情形一：on & on
execute if score @s chain_mining_setting_ores matches 1 if score @s chain_mining_setting_logs matches 1 run tellraw @s [" ",{"text":"1. 矿石： ","color":"aqua"},{"text":"[开]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 10"},"hoverEvent":{"action":"show_text","value":{"text":"点击关闭！","color":"yellow"}}},"               ",{"text":"2. 原木/菌柄： ","color":"aqua"},{"text":"[开]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 20"},"hoverEvent":{"action":"show_text","value":{"text":"点击关闭！","color":"yellow"}}}]
# 情形二：on & off
execute if score @s chain_mining_setting_ores matches 1 unless score @s chain_mining_setting_logs matches 1 run tellraw @s [" ",{"text":"1. 矿石： ","color":"aqua"},{"text":"[开]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 10"},"hoverEvent":{"action":"show_text","value":{"text":"点击关闭！","color":"yellow"}}},"               ",{"text":"2. 原木/菌柄： ","color":"aqua"},{"text":"[关]","color":"red","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 21"},"hoverEvent":{"action":"show_text","value":{"text":"点击开启！","color":"yellow"}}}]
# 情形三：off & on
execute unless score @s chain_mining_setting_ores matches 1 if score @s chain_mining_setting_logs matches 1 run tellraw @s [" ",{"text":"1. 矿石： ","color":"aqua"},{"text":"[关]","color":"red","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 11"},"hoverEvent":{"action":"show_text","value":{"text":"点击开启！","color":"yellow"}}},"               ",{"text":"2. 原木/菌柄： ","color":"aqua"},{"text":"[开]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 20"},"hoverEvent":{"action":"show_text","value":{"text":"点击关闭！","color":"yellow"}}}]
# 情形四：off & off
execute unless score @s chain_mining_setting_ores matches 1 unless score @s chain_mining_setting_logs matches 1 run tellraw @s [" ",{"text":"1. 矿石： ","color":"aqua"},{"text":"[关]","color":"red","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 11"},"hoverEvent":{"action":"show_text","value":{"text":"点击开启！","color":"yellow"}}},"               ",{"text":"2. 原木/菌柄： ","color":"aqua"},{"text":"[关]","color":"red","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 21"},"hoverEvent":{"action":"show_text","value":{"text":"点击开启！","color":"yellow"}}}]