tellraw @s ["",{"text":"---------------------------------------------\n","color":"gray"},{"text":"\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305","color":"gold","bold":true},{"text":" - \u519c\u4f5c\u72691\u4f7f\u7528\u8bf4\u660e","color":"gold"}]
tellraw @s [" ",{"text":"1. \u652f\u6301","color":"aqua"},{"text":"[\u8fd96\u79cd\u65b9\u5757]","color":"green","hoverEvent":{"action":"show_text","value":"\u5c0f\u9ea6\u3001\u80e1\u841d\u535c\u3001\u9a6c\u94c3\u85af\u3001\u751c\u83dc\u6839\u3001\u4e0b\u754c\u75a3\u548c\u7518\u8517"}},{"text":"\uff1b","color":"aqua"}]
tellraw @s [" ",{"text":"2. \u53ea\u6709\u6210\u719f\u7684\u4f5c\u7269\u624d\u80fd\u8fde\u9501\uff0c\u4e14\u91c7\u96c6\u540e\u81ea\u52a8\u8865\u79cd\uff1b","color":"aqua"}]
tellraw @s [" ",{"text":"3. \u4f7f\u7528\u5de5\u5177","color":"aqua"},{"text":"\u4e0d\u4f1a","color":"yellow","bold":true},{"text":"\u6d88\u8017\u8010\u4e45\uff0c\u4e14\u5de5\u5177\u4e0a\u7684\u65f6\u8fd0\u80fd\u751f\u6548\uff1b","color":"aqua"}]
tellraw @s [" ",{"text":"4. \u5bf9\u4e8e\u7518\u8517\uff0c\u6700\u5e95\u90e8\u7684\u4e0d\u4f1a\u81ea\u52a8\u91c7\u96c6\u3002","color":"aqua"}]
tellraw @s [" ",{"text":"\u66f4\u591a\u4f7f\u7528\u8bf4\u660e\uff1a","color":"aqua"},{"text":"[\u603b\u8bf4\u660e]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}," ",{"text":"[\u77ff\u77f3]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 101"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}," ",{"text":"[\u539f\u6728/\u83cc\u67c4]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 102"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}," ",{"text":"[\u7c7b\u77f3\u5934]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 103"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}," ",{"text":"[\u8367\u77f3]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 104"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}," ",{"text":"[\u519c\u4f5c\u72692]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 106"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}]
function mine:tellraw/instruction/generic/see_also
tellraw @s ["",{"text":"---------------------------------------------","color":"gray"}]