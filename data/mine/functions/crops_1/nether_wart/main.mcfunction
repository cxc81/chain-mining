scoreboard players set count mine 1
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] at @s run function mine:crops_1/nether_wart/replant
function mine:generic/tp_items
function mine:crops_1/nether_wart/find
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u65b9\u5757","color":"aqua"}]
scoreboard players reset * mine