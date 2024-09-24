#先获取玩家所在的维度，0=主世界，-1=其他
#然而，只有主世界和下界才能运作连锁采集
scoreboard players set dimension mine -1
execute if block 0 -64 0 minecraft:chest run scoreboard players set dimension mine 0

execute if score dimension mine matches 0 run item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
execute if score dimension mine matches -1 run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
function mine:crops_2/match_tool
#无精准采集
execute if score dimension mine matches 0 if score match_tool mine matches 1 unless data block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon_slice"}},limit=1,sort=nearest] run function mine:crops_2/melon/main
execute if score dimension mine matches -1 if score match_tool mine matches 1 unless data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon_slice"}},limit=1,sort=nearest] run function mine:crops_2/melon/main
#有精准采集
execute if score dimension mine matches 0 if score match_tool mine matches 1 if data block 0 -64 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon"}},limit=1,sort=nearest] run function mine:crops_2/melon/main
execute if score dimension mine matches -1 if score match_tool mine matches 1 if data block 0 0 0 Items[{Slot:0b}].tag.Enchantments[{id:"minecraft:silk_touch"}] at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:melon"}},limit=1,sort=nearest] run function mine:crops_2/melon/main
scoreboard players reset @s mine_melon