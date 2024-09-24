# 矿石 & 原木/菌柄
# 情形一：on & on
execute if score @s mine_setting_ores matches 1 if score @s mine_setting_logs matches 1 run tellraw @s [" ",{"text":"1. \u77ff\u77f3\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 10"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}},"               ",{"text":"2. \u539f\u6728/\u83cc\u67c4\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 20"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}}]
# 情形二：on & off
execute if score @s mine_setting_ores matches 1 unless score @s mine_setting_logs matches 1 run tellraw @s [" ",{"text":"1. \u77ff\u77f3\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 10"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}},"               ",{"text":"2. \u539f\u6728/\u83cc\u67c4\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 21"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}}]
# 情形三：off & on
execute unless score @s mine_setting_ores matches 1 if score @s mine_setting_logs matches 1 run tellraw @s [" ",{"text":"1. \u77ff\u77f3\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 11"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}},"               ",{"text":"2. \u539f\u6728/\u83cc\u67c4\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 20"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}}]
# 情形四：off & off
execute unless score @s mine_setting_ores matches 1 unless score @s mine_setting_logs matches 1 run tellraw @s [" ",{"text":"1. \u77ff\u77f3\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 11"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}},"               ",{"text":"2. \u539f\u6728/\u83cc\u67c4\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 21"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}}]