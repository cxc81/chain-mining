execute if score dimension mine matches 0 unless data block 0 -64 0 Items[{Slot:0b}].id run scoreboard players set empty_hand mine 1
execute if score dimension mine matches -1 unless data block 0 0 0 Items[{Slot:0b}].id run scoreboard players set empty_hand mine 1
scoreboard players set count mine 1
scoreboard players set damage_multiplier mine 0

#�˺����жϣ������е���Ʒ�ھ�ӫʯ���Ƿ�������;��Լ�ÿ�����ļ����;�
function mine:glowstone/holding_tool

function mine:glowstone/find
execute if score dimension mine matches 0 run item replace entity @s weapon.mainhand from block 0 -64 0 container.0
execute if score dimension mine matches -1 run item replace entity @s weapon.mainhand from block 0 0 0 container.0
title @s actionbar [{"text":"\u5171\u91c7\u96c6\u4e86 ","color":"aqua"},{"score":{"name":"count","objective":"mine"},"color":"yellow"},{"text":" \u4e2a\u65b9\u5757","color":"aqua"}]
execute if score dimension mine matches 0 run data remove block 0 -64 0 Items
execute if score dimension mine matches -1 run data remove block 0 0 0 Items
scoreboard players reset * mine