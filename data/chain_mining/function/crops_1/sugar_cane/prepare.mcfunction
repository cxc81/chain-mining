function chain_mining:generic/begin_chain_mining
# 如果玩家挖掘的甘蔗下方还有甘蔗，则触发连锁
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:sugar_cane"}},limit=1,sort=nearest] if block ~ ~-1 ~ minecraft:sugar_cane run function chain_mining:crops_1/sugar_cane/main
scoreboard players reset @s chain_mining_sugar_cane
function chain_mining:generic/end_chain_mining
