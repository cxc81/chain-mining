#1 - 矿石
execute if score ores mine_settings matches 1 run function mine:ores/detect
#2 - 原木/菌柄
execute if score logs mine_settings matches 1 run function mine:logs/detect
#3 - 类石头(安山岩、闪长岩、花岗岩、凝灰岩)
execute if score stones mine_settings matches 1 run function mine:stones/detect
#4 - 荧石
execute if score glowstone mine_settings matches 1 as @a[scores={mine_glowstone=1..}] at @s run function mine:glowstone/if_to_start
#5 - 农作物(小麦、胡萝卜、马铃薯、甜菜根)
execute if score crops mine_settings matches 1 run function mine:crops/detect
#将所有掉落物标记为已检测
tag @e[type=minecraft:item,tag=!detected] add detected

#信息反馈
execute as @a unless score @s mine_enter = @s mine_enter run tellraw @s ["",{"text":"\u6210\u529f\u52a0\u8f7d\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305\uff01 ","color":"gold"},{"text":"[\u70b9\u51fb\u67e5\u770b\u8bbe\u7f6e] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 1"}},{"text":"[\u70b9\u51fb\u67e5\u770b\u8bf4\u660e]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"}}]
scoreboard players set @a mine_enter 0

#对玩家/trigger的数值进行回应
execute as @a if score @s mine_trigger matches 1 run function mine:info/settings
execute as @a if score @s mine_trigger matches 2 run function mine:info/instruction
execute as @a if score @s mine_trigger matches 10 run scoreboard players set ores mine_settings 0
execute as @a if score @s mine_trigger matches 11 run scoreboard players set ores mine_settings 1
execute as @a if score @s mine_trigger matches 20 run scoreboard players set logs mine_settings 0
execute as @a if score @s mine_trigger matches 21 run scoreboard players set logs mine_settings 1
execute as @a if score @s mine_trigger matches 30 run scoreboard players set stones mine_settings 0
execute as @a if score @s mine_trigger matches 31 run scoreboard players set stones mine_settings 1
execute as @a if score @s mine_trigger matches 40 run scoreboard players set glowstone mine_settings 0
execute as @a if score @s mine_trigger matches 41 run scoreboard players set glowstone mine_settings 1
execute as @a if score @s mine_trigger matches 50 run scoreboard players set crops mine_settings 0
execute as @a if score @s mine_trigger matches 51 run scoreboard players set crops mine_settings 1
execute as @a if score @s mine_trigger matches 101 run function mine:info/instruction_ores
execute as @a if score @s mine_trigger matches 102 run function mine:info/instruction_logs
execute as @a if score @s mine_trigger matches 103 run function mine:info/instruction_stones
execute as @a if score @s mine_trigger matches 104 run function mine:info/instruction_glowstone
execute as @a if score @s mine_trigger matches 105 run function mine:info/instruction_crops
execute as @a if score @s mine_trigger matches 10..99 run function mine:info/settings
#数值归零
scoreboard players reset @a mine_trigger
#允许玩家利用/trigger操控
scoreboard players enable @a mine_trigger