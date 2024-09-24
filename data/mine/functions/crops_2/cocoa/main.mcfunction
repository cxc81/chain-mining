scoreboard players set count mine 1
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] at @s run function mine:crops_2/cocoa/replant
function mine:generic/tp_items
function mine:crops_2/cocoa/find
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace entity @s weapon.mainhand from block ~ ~ ~ container.0
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u65b9\u5757","color":"aqua"}]
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run data remove block ~ ~ ~ Items
scoreboard players reset * mine