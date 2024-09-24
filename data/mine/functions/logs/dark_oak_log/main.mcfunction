scoreboard players set count mine 1
scoreboard players set count2 mine 0
function mine:logs/dark_oak_log/find
execute if score dimension mine matches 0 run item replace entity @s weapon.mainhand from block 0 -64 0 container.0
execute if score dimension mine matches -1 run item replace entity @s weapon.mainhand from block 0 0 0 container.0
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u539f\u6728\uff0c ","color":"aqua"},{"score":{"name":"count2","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u6811\u53f6","color":"aqua"}]
execute if score dimension mine matches 0 run data remove block 0 -64 0 Items
execute if score dimension mine matches -1 run data remove block 0 0 0 Items
scoreboard players reset * mine