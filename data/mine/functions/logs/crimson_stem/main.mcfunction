scoreboard players set count mine 1
scoreboard players set count2 mine 0
scoreboard players set count3 mine 0
function mine:generic/tp_items
execute if score match_tool_off mine matches 1 run function mine:logs/crimson_stem/find_wart
function mine:logs/crimson_stem/find
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace entity @s weapon.offhand from block ~ ~ ~ container.1
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u83cc\u67c4\uff0c ","color":"aqua"},{"score":{"name":"count2","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u75a3\u5757\uff0c ","color":"aqua"},{"score":{"name":"count3","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u83cc\u5149\u4f53","color":"aqua"}]
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run data remove block ~ ~ ~ Items
scoreboard players reset * mine