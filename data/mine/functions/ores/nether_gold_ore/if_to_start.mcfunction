item replace block 0 0 0 container.0 from entity @s weapon.mainhand
#无精准采集
execute unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:gold_nugget"}},limit=1,sort=nearest] run function mine:ores/nether_gold_ore/main
#有精准采集
execute if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:nether_gold_ore"}},limit=1,sort=nearest] run function mine:ores/nether_gold_ore/main
scoreboard players reset @s mine_n_gold