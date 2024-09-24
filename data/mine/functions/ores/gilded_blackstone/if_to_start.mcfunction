#先获取玩家所在的维度，0=主世界，-1=其他
#然而，只有主世界和下界才能运作连锁采集
scoreboard players set dimension mine -1
execute if block 0 -64 0 minecraft:chest run scoreboard players set dimension mine 0

execute if score dimension mine matches 0 run item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute if score dimension mine matches -1 run item replace block 0 0 0 container.0 from entity @s weapon.mainhand

#获取时运的等级。如果有精准采集，则设为-1
scoreboard players set fortune_level mine 0
execute if score dimension mine matches 0 store result score fortune_level mine run data get block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:fortune"}].lvl
execute if score dimension mine matches -1 store result score fortune_level mine run data get block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:fortune"}].lvl
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players set fortune_level mine -1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] run scoreboard players set fortune_level mine -1

#根据fortune_level，为可能出现的掉落物添加标签
execute if score fortune_level mine matches -1 run tag @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gilded_blackstone"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop
execute if score fortune_level mine matches 0..2 run tag @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop
execute if score fortune_level mine matches 0..2 run tag @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gilded_blackstone"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop
execute if score fortune_level mine matches 3.. run tag @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] add mine_gilded_blackstone_drop

#主函数
execute at @e[type=minecraft:item,tag=!detected,tag=mine_gilded_blackstone_drop,limit=1,sort=nearest] run function mine:ores/gilded_blackstone/main

scoreboard players reset @s mine_gilded_blackstone