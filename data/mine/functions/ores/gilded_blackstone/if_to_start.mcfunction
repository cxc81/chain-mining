tag @s add mine_player
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand
#获取时运的等级。如果有精准采集，则设为-1
scoreboard players set fortune_level mine 0
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] store result score fortune_level mine run data get block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:fortune"}].lvl
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] if data block ~ ~ ~ Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players set fortune_level mine -1

#根据fortune_level，为可能出现的掉落物添加标签
#-1~2：有可能镶金黑石；0-3+：有可能金粒
execute if score fortune_level mine matches -1..2 run tag @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gilded_blackstone"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop
execute if score fortune_level mine matches 0.. run tag @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop

#主函数
execute at @e[type=minecraft:item,tag=!detected,tag=mine_gilded_blackstone_drop,limit=1,sort=nearest] run function mine:ores/gilded_blackstone/main

scoreboard players reset @s mine_gilded_blackstone
tag @s remove mine_player