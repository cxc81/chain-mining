item replace block 0 0 0 container.1 from entity @s weapon.offhand
scoreboard players set count mine 1
scoreboard players set count2 mine 0
scoreboard players set count3 mine 0
function mine:logs/match_tool_off
function mine:logs/crimson_stem/find
item replace entity @s weapon.mainhand from block 0 0 0 container.0
item replace entity @s weapon.offhand from block 0 0 0 container.1
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u83cc\u67c4\uff0c ","color":"aqua"},{"score":{"name":"count2","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u75a3\u5757\uff0c ","color":"aqua"},{"score":{"name":"count3","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u83cc\u5149\u4f53","color":"aqua"}]
data remove block 0 0 0 Items
scoreboard players reset * mine