# 1 - 矿石
execute if score @s mine_setting_ores matches 1 at @s run function mine:ores/main
# 2 - 原木/菌柄
execute if score @s mine_setting_logs matches 1 at @s run function mine:logs/main
# 3 - 类石头(安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块)
execute if score @s mine_setting_stones matches 1 at @s run function mine:stones/main
# 4 - 荧石
execute if score @s mine_setting_glowstone matches 1 if score @s mine_glowstone matches 1.. at @s run function mine:glowstone/prepare
# 5 - 农作物1(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗和仙人掌)
execute if score @s mine_setting_crops_1 matches 1 at @s run function mine:crops_1/main
# 6 - 农作物2(南瓜、西瓜、可可果和甜浆果丛)
execute if score @s mine_setting_crops_2 matches 1 at @s run function mine:crops_2/main
