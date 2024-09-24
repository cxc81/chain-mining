#设置初始值，代表原木、树叶、树根分别挖掘数量
#count=红树原木，count2=红树树叶，count3=红树根
execute if score @s mine_mangrove matches 1.. run scoreboard players set count mine 1
execute unless score @s mine_mangrove matches 1.. run scoreboard players set count mine 0
scoreboard players set count2 mine 0
execute if score @s mine_mangrove_roots matches 1.. run scoreboard players set count3 mine 1
execute unless score @s mine_mangrove_roots matches 1.. run scoreboard players set count3 mine 0

function mine:generic/tp_items
function mine:logs/mangrove_log/find_leaves
function mine:logs/mangrove_log/find
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u539f\u6728\uff0c ","color":"aqua"},{"score":{"name":"count2","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u6811\u53f6\uff0c ","color":"aqua"},{"score":{"name":"count3","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u7ea2\u6811\u6839","color":"aqua"}]
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run data remove block ~ ~ ~ Items
scoreboard players reset * mine