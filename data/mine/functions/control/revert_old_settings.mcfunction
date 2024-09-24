# 此前版本中，主世界和下界放了箱子和标记实体，设了常加载区块
execute in minecraft:overworld run setblock 0 -64 0 minecraft:bedrock
execute in minecraft:the_nether run setblock 0 0 0 minecraft:bedrock
kill @e[type=minecraft:marker,tag=mine]
execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0
gamerule commandBlockOutput true
tellraw @s ["",{"text":"已完成优化！","color":"aqua"}]
data modify storage mine:data lastDataVersion set from storage mine:data dataVersion