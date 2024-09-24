#先获取玩家所在的维度，0=主世界，-1=其他
#然而，只有主世界和下界才能运作连锁采集
scoreboard players set dimension mine -1
execute if block 0 -64 0 minecraft:chest run scoreboard players set dimension mine 0

execute if score dimension mine matches 0 run item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute if score dimension mine matches -1 run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
#无精准采集
execute if score dimension mine matches 0 unless data block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:raw_gold"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
execute if score dimension mine matches -1 unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:raw_gold"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
#有精准采集——浅层
execute if score dimension mine matches 0 if score @s mine_gold matches 1.. if data block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_ore"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
execute if score dimension mine matches -1 if score @s mine_gold matches 1.. if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_ore"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
#有精准采集——深层
execute if score dimension mine matches 0 if score @s mine_gold2 matches 1.. if data block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:deepslate_gold_ore"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
execute if score dimension mine matches -1 if score @s mine_gold2 matches 1.. if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:deepslate_gold_ore"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
scoreboard players reset @s mine_gold
scoreboard players reset @s mine_gold2