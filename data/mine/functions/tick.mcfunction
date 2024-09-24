#1 - 矿石
execute as @a if score @s mine_setting_ores matches 1 at @s run function mine:ores/detect
#2 - 原木/菌柄
execute as @a if score @s mine_setting_logs matches 1 at @s run function mine:logs/detect
#3 - 类石头(安山岩、闪长岩、花岗岩、凝灰岩、方解石)
execute as @a if score @s mine_setting_stones matches 1 at @s run function mine:stones/detect
#4 - 荧石
execute as @a[scores={mine_glowstone=1..}] if score @s mine_setting_glowstone matches 1 at @s run function mine:glowstone/if_to_start
#5 - 农作物1(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗)
execute as @a if score @s mine_setting_crops_1 matches 1 at @s run function mine:crops_1/detect
#6 - 农作物2(南瓜、西瓜、可可果)
execute as @a if score @s mine_setting_crops_2 matches 1 at @s run function mine:crops_2/detect
#将所有掉落物标记为已检测
tag @e[type=minecraft:item,tag=!detected] add detected

#数据包加载成功的信息反馈
execute as @a unless score @s mine_enter = @s mine_enter run tellraw @s ["",{"text":"\u6210\u529f\u52a0\u8f7d\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305\uff01 ","color":"gold"},{"text":"[\u70b9\u51fb\u67e5\u770b\u8bbe\u7f6e] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 1"}},{"text":"[\u70b9\u51fb\u67e5\u770b\u8bf4\u660e]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"}}]
scoreboard players set @a mine_enter 0

#玩家如果是第一次进入此世界，要给设置赋初值
execute as @a unless score @s mine_setting_ores = @s mine_setting_ores run function mine:player_first_enter

#对玩家/trigger的数值进行回应
execute as @a if score @s mine_trigger matches 1 run function mine:tellraw/settings/main
execute as @a if score @s mine_trigger matches 2 run function mine:tellraw/instruction/main
execute as @a if score @s mine_trigger matches 10 run scoreboard players set @s mine_setting_ores 0
execute as @a if score @s mine_trigger matches 11 run scoreboard players set @s mine_setting_ores 1
execute as @a if score @s mine_trigger matches 20 run scoreboard players set @s mine_setting_logs 0
execute as @a if score @s mine_trigger matches 21 run scoreboard players set @s mine_setting_logs 1
execute as @a if score @s mine_trigger matches 30 run scoreboard players set @s mine_setting_stones 0
execute as @a if score @s mine_trigger matches 31 run scoreboard players set @s mine_setting_stones 1
execute as @a if score @s mine_trigger matches 40 run scoreboard players set @s mine_setting_glowstone 0
execute as @a if score @s mine_trigger matches 41 run scoreboard players set @s mine_setting_glowstone 1
execute as @a if score @s mine_trigger matches 50 run scoreboard players set @s mine_setting_crops_1 0
execute as @a if score @s mine_trigger matches 51 run scoreboard players set @s mine_setting_crops_1 1
execute as @a if score @s mine_trigger matches 60 run scoreboard players set @s mine_setting_crops_2 0
execute as @a if score @s mine_trigger matches 61 run scoreboard players set @s mine_setting_crops_2 1
execute as @a if score @s mine_trigger matches 70 run scoreboard players set @s mine_setting_loot 0
execute as @a if score @s mine_trigger matches 71 run scoreboard players set @s mine_setting_loot 1
execute as @a if score @s mine_trigger matches 101 run function mine:tellraw/instruction/ores
execute as @a if score @s mine_trigger matches 102 run function mine:tellraw/instruction/logs
execute as @a if score @s mine_trigger matches 103 run function mine:tellraw/instruction/stones
execute as @a if score @s mine_trigger matches 104 run function mine:tellraw/instruction/glowstone
execute as @a if score @s mine_trigger matches 105 run function mine:tellraw/instruction/crops_1
execute as @a if score @s mine_trigger matches 106 run function mine:tellraw/instruction/crops_2
execute as @a if score @s mine_trigger matches 10..99 run function mine:tellraw/settings/main
#数值归零
scoreboard players reset @a mine_trigger
#允许玩家利用/trigger操控
scoreboard players enable @a mine_trigger