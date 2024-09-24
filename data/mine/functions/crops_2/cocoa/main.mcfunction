scoreboard players set count mine 1
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] at @s run function mine:crops_2/cocoa/replant
function mine:crops_2/cocoa/find
execute if score dimension mine matches 0 run item replace entity @s weapon.mainhand from block 0 -64 0 container.0
execute if score dimension mine matches -1 run item replace entity @s weapon.mainhand from block 0 0 0 container.0
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u65b9\u5757","color":"aqua"}]
execute if score dimension mine matches 0 run data remove block 0 -64 0 Items
execute if score dimension mine matches -1 run data remove block 0 0 0 Items
scoreboard players reset * mine