scoreboard players set count mine 1
scoreboard players set count2 mine 0
function mine:generic/tp_items
function mine:logs/oak_log/find_leaves
function mine:logs/oak_log/find
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u539f\u6728\uff0c ","color":"aqua"},{"score":{"name":"count2","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u6811\u53f6","color":"aqua"}]
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run data remove block ~ ~ ~ Items
scoreboard players reset * mine