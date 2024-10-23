# 此函数仅由chain_mining:generic/end_chain_mining调用
# 用于工具耐久耗尽，自动损毁
item replace entity @s weapon.offhand with minecraft:air
playsound minecraft:entity.item.break player @a
