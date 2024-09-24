# 判断玩家本次挖掘后，掉落物品的总数量（可能掉落多个物品实体）
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:carrot"}},distance=..1] run function mine:crops_1/carrot/add_drop_count
