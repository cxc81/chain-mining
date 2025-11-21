# 此函数仅在结束连锁采集，且耐久耗尽时被调用一次
item replace entity @s weapon.offhand with minecraft:air
playsound minecraft:entity.item.break player @a
