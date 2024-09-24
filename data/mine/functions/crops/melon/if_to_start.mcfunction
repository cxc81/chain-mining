item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function mine:crops/match_tool
#无精准采集
execute if score match_tool mine matches 1 unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon_slice"}},limit=1,sort=nearest] run function mine:crops/melon/main
#有精准采集
execute if score match_tool mine matches 1 if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon"}},limit=1,sort=nearest] run function mine:crops/melon/main
scoreboard players reset @s mine_melon