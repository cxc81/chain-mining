scoreboard objectives remove mine
scoreboard objectives remove mine_enter

data remove storage mine:data functionCall

tellraw @s ["",{"text":"[连锁采集数据包]","color":"gold"}," ",{"text":"已完成优化！","color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
data modify storage mine:data lastDataVersion set from storage mine:data dataVersion
