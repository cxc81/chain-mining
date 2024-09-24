# 此前版本中，主世界和下界放了箱子和标记实体，设了常加载区块
execute in minecraft:overworld run setblock 0 -64 0 minecraft:bedrock
execute in minecraft:the_nether run setblock 0 0 0 minecraft:bedrock
kill @e[type=minecraft:marker,tag=mine]
execute in minecraft:overworld run forceload remove 0 0
execute in minecraft:the_nether run forceload remove 0 0
gamerule commandBlockOutput true

# 1.18-1.18.2版本的数据包中的名字，现不使用，故移除
scoreboard objectives remove mine_coal
scoreboard objectives remove mine_coal2
scoreboard objectives remove mine_iron
scoreboard objectives remove mine_iron2
scoreboard objectives remove mine_copper
scoreboard objectives remove mine_copper2
scoreboard objectives remove mine_lapis
scoreboard objectives remove mine_lapis2
scoreboard objectives remove mine_gold
scoreboard objectives remove mine_gold2
scoreboard objectives remove mine_redstone
scoreboard objectives remove mine_redstone2
scoreboard objectives remove mine_diamond
scoreboard objectives remove mine_diamond2
scoreboard objectives remove mine_emerald
scoreboard objectives remove mine_emerald2
scoreboard objectives remove mine_nether_quartz
scoreboard objectives remove mine_nether_gold
scoreboard objectives remove mine_ancient
scoreboard objectives remove mine_settings
scoreboard objectives remove mine_setting_crops

tellraw @s ["",{"text":"已完成优化！","color":"aqua"}]
data modify storage mine:data lastDataVersion set from storage mine:data dataVersion