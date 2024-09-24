# 判断玩家本次挖掘后，掉落物品的总数量（可能掉落多个物品实体）
execute as @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:potato"}},distance=..1] run function mine:crops_1/potato/one_drop_count