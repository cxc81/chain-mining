function mine:generic/begin_chain_mining
# 如果玩家挖掘的仙人掌下方还有仙人掌，则触发连锁
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:cactus"}},limit=1,sort=nearest] if block ~ ~-1 ~ minecraft:cactus run function mine:crops_2/cactus/main
scoreboard players reset @s mine_cactus
function mine:generic/end_chain_mining
