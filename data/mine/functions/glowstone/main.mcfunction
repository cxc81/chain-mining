execute unless data block 0 0 0 Items[{Slot:0b}].id run scoreboard players set empty_hand mine 1
scoreboard players set count mine 1
scoreboard players set damage_multiplier mine 0

#此函数判断：用手中的物品挖掘荧石，是否会消耗耐久以及每次消耗几点耐久
function mine:glowstone/holding_tool

function mine:glowstone/find
item replace entity @s weapon.mainhand from block 0 0 0 container.0
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u65b9\u5757","color":"aqua"}]
data remove block 0 0 0 Items
scoreboard players reset * mine