# 农作物1 & 农作物2
# 情形一：on & on
execute if score @s mine_setting_crops_1 matches 1 if score @s mine_setting_crops_2 matches 1 run tellraw @s [" ",{"text":"5. ","color":"aqua"},{"text":"\u519c\u4f5c\u72691","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5c0f\u9ea6\u3001\u80e1\u841d\u535c\u3001\u9a6c\u94c3\u85af\u3001\u751c\u83dc\u6839\u3001\u4e0b\u754c\u75a3\u548c\u7518\u8517"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 50"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}},"           ",{"text":"6. ","color":"aqua"},{"text":"\u519c\u4f5c\u72692","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5357\u74dc\u3001\u897f\u74dc\u548c\u53ef\u53ef\u679c"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 60"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}}]
# 情形二：on & off
execute if score @s mine_setting_crops_1 matches 1 unless score @s mine_setting_crops_2 matches 1 run tellraw @s [" ",{"text":"5. ","color":"aqua"},{"text":"\u519c\u4f5c\u72691","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5c0f\u9ea6\u3001\u80e1\u841d\u535c\u3001\u9a6c\u94c3\u85af\u3001\u751c\u83dc\u6839\u3001\u4e0b\u754c\u75a3\u548c\u7518\u8517"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 50"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}},"           ",{"text":"6. ","color":"aqua"},{"text":"\u519c\u4f5c\u72692","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5357\u74dc\u3001\u897f\u74dc\u548c\u53ef\u53ef\u679c"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 61"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}}]
# 情形三：off & on
execute unless score @s mine_setting_crops_1 matches 1 if score @s mine_setting_crops_2 matches 1 run tellraw @s [" ",{"text":"5. ","color":"aqua"},{"text":"\u519c\u4f5c\u72691","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5c0f\u9ea6\u3001\u80e1\u841d\u535c\u3001\u9a6c\u94c3\u85af\u3001\u751c\u83dc\u6839\u3001\u4e0b\u754c\u75a3\u548c\u7518\u8517"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 51"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}},"           ",{"text":"6. ","color":"aqua"},{"text":"\u519c\u4f5c\u72692","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5357\u74dc\u3001\u897f\u74dc\u548c\u53ef\u53ef\u679c"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5f00]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 60"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5173\u95ed"}}}]
# 情形四：off & off
execute unless score @s mine_setting_crops_1 matches 1 unless score @s mine_setting_crops_2 matches 1 run tellraw @s [" ",{"text":"5. ","color":"aqua"},{"text":"\u519c\u4f5c\u72691","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5c0f\u9ea6\u3001\u80e1\u841d\u535c\u3001\u9a6c\u94c3\u85af\u3001\u751c\u83dc\u6839\u3001\u4e0b\u754c\u75a3\u548c\u7518\u8517"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 51"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}},"           ",{"text":"6. ","color":"aqua"},{"text":"\u519c\u4f5c\u72692","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"\u5357\u74dc\u3001\u897f\u74dc\u548c\u53ef\u53ef\u679c"}}},{"text":"\uff1a ","color":"aqua"},{"text":"[\u5173]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 61"},"hoverEvent":{"action":"show_text","value":{"text":"\u70b9\u51fb\u5f00\u542f"}}}]