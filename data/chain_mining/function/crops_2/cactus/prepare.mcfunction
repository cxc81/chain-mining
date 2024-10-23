function chain_mining:generic/begin_chain_mining
# 如果玩家挖掘的仙人掌下方还有仙人掌，则触发连锁
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:cactus"}},limit=1,sort=nearest] if block ~ ~-1 ~ minecraft:cactus run function chain_mining:crops_2/cactus/main
scoreboard players reset @s chain_mining_cactus
function chain_mining:generic/end_chain_mining
