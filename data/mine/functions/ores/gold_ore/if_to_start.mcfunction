item replace block 0 0 0 container.0 from entity @s weapon.mainhand
#无精准采集
execute unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:raw_gold"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
#有精准采集——浅层
execute if score @s mine_gold matches 1.. if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_ore"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
#有精准采集——深层
execute if score @s mine_gold2 matches 1.. if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:deepslate_gold_ore"}},limit=1,sort=nearest] run function mine:ores/gold_ore/main
scoreboard players reset @s mine_gold
scoreboard players reset @s mine_gold2