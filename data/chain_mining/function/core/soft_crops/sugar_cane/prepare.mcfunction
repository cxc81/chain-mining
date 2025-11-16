function chain_mining:core/generic/begin_chain_mining
# 如果玩家挖掘的甘蔗下方还有甘蔗，则触发连锁
execute at @e[type=minecraft:item,predicate=chain_mining:item/sugar_cane,tag=!chain_mining_detected,limit=1,sort=nearest] if block ~ ~-1 ~ minecraft:sugar_cane run function chain_mining:core/soft_crops/sugar_cane/main
scoreboard players reset @s chain_mining_sugar_cane
function chain_mining:core/generic/end_chain_mining
