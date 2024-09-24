item replace block 0 0 0 container.0 from entity @s weapon.mainhand
#无精准采集
execute unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:raw_iron"}},limit=1,sort=nearest] run function mine:ores/iron_ore/main
#有精准采集——浅层
execute if score @s mine_iron matches 1.. if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:iron_ore"}},limit=1,sort=nearest] run function mine:ores/iron_ore/main
#有精准采集——深层
execute if score @s mine_iron2 matches 1.. if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:deepslate_iron_ore"}},limit=1,sort=nearest] run function mine:ores/iron_ore/main
scoreboard players reset @s mine_iron
scoreboard players reset @s mine_iron2